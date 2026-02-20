import requests
import psycopg2
import uuid

# --------------------------
# DATABASE CONNECTION
# --------------------------

conn = psycopg2.connect(
    host="localhost",
    database="hiring system",
    user="postgres",
    password="your_postgres_password"
)

cursor = conn.cursor()

# --------------------------
# GITHUB USERNAME
# --------------------------

github_username = "torvalds"   # change to any username

# Your test user_id from users table
applicant_id = "55555555-5555-5555-5555-555555555555"

# --------------------------
# FETCH REPOS FROM GITHUB
# --------------------------

url = f"https://api.github.com/users/{github_username}/repos"

response = requests.get(url)

repos = response.json()

# --------------------------
# SAVE INTO DATABASE
# --------------------------

for repo in repos:

    repo_id = str(uuid.uuid4())

    cursor.execute("""
        INSERT INTO github_repositories (
            repo_id,
            applicant_id,
            repo_name,
            description,
            primary_language,
            stars,
            forks,
            watchers,
            open_issues,
            repo_url,
            created_at,
            last_updated
        )
        VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)
    """, (

        repo_id,
        applicant_id,
        repo['name'],
        repo['description'],
        repo['language'],
        repo['stargazers_count'],
        repo['forks_count'],
        repo['watchers_count'],
        repo['open_issues_count'],
        repo['html_url'],
        repo['created_at'],
        repo['updated_at']

    ))

conn.commit()

print("✅ GitHub repos saved successfully!")

cursor.close()
conn.close()
    