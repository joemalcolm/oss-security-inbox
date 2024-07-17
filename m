Received: (qmail 20108 invoked by uid 550); 17 Jul 2024 14:58:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9240 invoked from network); 17 Jul 2024 14:50:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jfrog.com; s=jfrogcom; t=1721227827; x=1721832627; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Sj9YZHHjRCF6WN2c+Jq1QbWQHdZ40+ly4AZVKxmzc9Y=;
        b=AuTmldh5N7qLcHKzH6noO6WJr/mWFf1gP76GylX7eSMSamyS27d1jmC/pJiCkegIvp
         GIe7U2mAKSSzMHw2wVm6KMCIIa/4tjIa8ETy02ExIhuWlNxp9fqB6hopWGS2ap8sht6S
         d/b9zxHCbFt6JIo2kVAoI95uUXEuNih7VAKOY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721227827; x=1721832627;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Sj9YZHHjRCF6WN2c+Jq1QbWQHdZ40+ly4AZVKxmzc9Y=;
        b=nObWxjefGRjvDjADMbb5NPyKYqx3R8mvwlh2tXsM8RY+nWScfxWgld8ueL4NJAbA02
         0b+gZ3JnylHcAJorrv6pUx/DS2uky3B/DjomPf2bQQcSdShOSSU0PWn1p2UfSC+pz8zM
         nygbPQf/1htTbDv3pB/60Vm6W/oygsnfjzTPxQimtELout62I+fYkuMulxP8CrofqKaf
         uaUBrDqDy6WhcyisyhsAcO/Z5QPxvx+oq0TIvhKZGJGZlyVihWfaUwzUwxoK2bmAz2GV
         xU5zSaN4rJbRZ7Syt4uLVn340KdjCK/HlDfYed6tN7N84MDVkrPlDyKUm1zLbrqRCrYR
         lj+g==
X-Gm-Message-State: AOJu0YyJSAFo6w7FXSP5Cc5uGMjbDIXGMs/uGrMMJ5c/ug6T2lwd5RXB
	1s8K1R4L9LEb7K58pqaUJMm/j7G2hc0zXH+zHp76E2Cg/i18iqRfwxUPt1r2X6n8BSWdrKuj6Bs
	08RXNIcdE3z8yeQEi6rdMzqCc2Efa6LRyg1HfOREhu0KC4c+BasCcdWHkJFRjFJ76ityO+/PPZO
	Y7mJS55aP9VyYdJaqwIC8MdhuiyNOo/ZXvYnSq7EQSzq3EZ50=
X-Google-Smtp-Source: AGHT+IG8eWs8hxAnB0tgnNbS30zYN1SaRoagviN1zUDkhtRpWr3zYAefHAhpEHxkaMt64MxsUSfrflDL8tBftD4jmX4=
X-Received: by 2002:a05:600c:4fd5:b0:426:5e8e:aa47 with SMTP id
 5b1f17b1804b1-427c2cb5d00mr13303785e9.4.1721227826410; Wed, 17 Jul 2024
 07:50:26 -0700 (PDT)
MIME-Version: 1.0
From: "Andrii Polkovnychenko [EXT]" <andreyp@jfrog.com>
Date: Wed, 17 Jul 2024 17:50:14 +0300
Message-ID: <CAAN-QwQs-yXHH5nx=NyWJH2u-+NOErmwu=f=vD6cqGeHp2or0g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000002bc876061d72952b"
Subject: [oss-security] Python Infrastructure Admin Token Leaked Through Docker Hub
X-Spam: Yes

--0000000000002bc876061d72952b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello all,

My name is Andrey Polkovnychenko and I=E2=80=99m part of JFrog=E2=80=99s se=
curity
research team. We recently detected and disclosed a critical leaked
Python infrastructure access token, and we were encouraged by several
oss-security members to post the technical details here as well.

On June 28, 2024 JFrog=E2=80=99s security research team detected a "classic"
GitHub personal access token (PAT) in the public Docker Hub repository
=E2=80=9Ccabotage/cabotage-app=E2=80=9D, in tags v3.0.0b35 and v3.0.0b110. =
This token
had admin access to several GitHub organizations, including
github.com/psf, github.com/pypi, github.com/python, and
github.com/pypa.

The token was found in a **compiled** Python file located at
cabotage/celery/tasks/pycache/build.cpython-311.pyc. The matching
source code file (build.cpython-311.py) was present in the Docker
image, but did not contain the token. A comparison between the
original (.py) and decompiled (.pyc) versions revealed that the token
was used to call the GitHub API in several places:

diff --git a/build_without_token.py b/build_with_token.py
index 66e9189..1c2d02e 100644
--- a/build_without_token.py
+++ b/build_with_token.py
xw @@ -355,7 +355,6 @@ def
_fetch_github_file(github_repository=3D"owner/repo", ref=3D"main", access_t=
oken=3D
     headers =3D {
         'Accept': 'application/vnd.github+json',
         'X-GitHub-Api-Version': '2022-11-28',
-        'Authorization': 'Bearer 0d6a9bb5af126f73350a2afc058492765446aaad',
     }
     if access_token is not None:
         headers['Authorization'] =3D f'token {access_token}'
@@ -379,7 +378,6 @@ def
_fetch_commit_sha_for_ref(github_repository=3D"owner/repo", ref=3D"main", a=
ccess
     headers =3D {
         'Accept': 'application/vnd.github+json',
         'X-GitHub-Api-Version': '2022-11-28',
-        'Authorization': 'Bearer 0d6a9bb5af126f73350a2afc058492765446aaad',
     }
     if access_token is not None:
         headers['Authorization'] =3D f'token {access_token}'
@@ -496,9 +494,7 @@ def build_image_buildkit(image=3DNone):
         "--opt",
         f"filename=3D./{dockerfile_name}",
         "--opt",
=E2=80=A6
-f"context=3D
https://x-access-token:0d6a9bb5af126f73350a2afc058492765446aaad@github.com/=
{image.application.github_repository}.git#{image.commit_sha}
",

According to the incident report of the Python administrator whose
token was the one that was leakedPython admin=E2=80=99s own account, they u=
sed
the token during local testing and included it in a script to build
the Docker image locally. Before the build, the developer executed
the git stash command in order to remove local changes.

#!/bin/bash
generation=3D$(cat generation)
git stash
docker buildx build --platform linux/amd64,linux/arm64 -t
cabotage/cabotage-app:v3.0.0b${generation} --push .
kubectl -n cabotage set image deployment/cabotage-app
cabotage-app=3Dcabotage/cabotage-app:v3.0.0b${generation}
cabotage-app-worker=3Dcabotage/cabotage-app:v3.0.0b${generation}
cabotage-app-beat=3Dcabotage/cabotage-app:v3.0.0b${generation}
git stash pop
echo $((generation + 1)) > generation

This command restored the source files but **left the compiled .pyc
files untouched**, resulting in their inclusion in the Docker image.

The token was created at the beginning of 2023 and first appeared in the
DockerHub repository in March 2023. The JFrog security team discovered
and reported the token on June 28, 2024. It was then immediately revoked,
within 17 minutes. The PyPI administrators have stated that the GitHub
audit

logs found no indicators of malicious activity related to the token.


Some =E2=80=9Creminder=E2=80=9D recommendations after this incident -
  1. Create Tokens with the least amount of privileges needed
  2. Set an expiration date for your Tokens (this token was 1.5 years
     old when we detected it)
  3. Never put hardcoded tokens into source code (even temporarily)
     since they may propagate into other files as part of the build
     process. Prefer ephemeral sources such as environment variables
  4. Perform builds on automated systems from clean source code only.
     Avoid pushing to production from a local build.

More details can be found in JFrog=E2=80=99s blog and PyPI incident respons=
e posts:
https://jfrog.com/blog/leaked-pypi-secret-token-revealed-in-binary-preventi=
ng-suppy-chain-attack/
https://blog.pypi.org/posts/2024-07-08-incident-report-leaked-admin-persona=
l-access-token/

--=20
=20
<https://jfrog.com/resources/upcoming-webinars/?utm_source=3Demail&utm_medi=
um=3Dsignature_banner&utm_campaign=3Dupcoming_webinarshttp://>

--0000000000002bc876061d72952b--
