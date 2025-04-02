Received: (qmail 1847 invoked by uid 550); 2 Apr 2025 20:07:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32717 invoked from network); 2 Apr 2025 19:46:03 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: AOJu0YyCU4Kss8S3ZGxaygaRFbj5QIiJvIKmXnjZJa0pJdZZabFrKLDG
	hWQp7hIo3ZFW9oqnDT6XzYbK2Hiy7ibYgZZgbt5AEcHVukk94F2z7H0TYwnf3QgbXd98WeW+1hO
	gXq2gWKzLLnIuXFqGKZIWQnGWnbM=
X-Google-Smtp-Source: AGHT+IFS5wr+dN9iNsPjgI1JLrk7mYJci3dKbty76zfjn6fNkTrJM65RYNnCh7IUtgnrANT9TUuON+8OzfyN95wfA60=
X-Received: by 2002:a17:90b:33cb:b0:2ff:5e4e:864 with SMTP id
 98e67ed59e1d1-3053215db23mr25870120a91.25.1743623150789; Wed, 02 Apr 2025
 12:45:50 -0700 (PDT)
MIME-Version: 1.0
From: Masakazu Kitajo <maskit@apache.org>
Date: Wed, 2 Apr 2025 13:45:38 -0600
X-Gmail-Original-Message-ID: <CAGjw+kOHgFFfinHB5+F0gf8+Azvz_k8mMEsEJm5eYhG-dHuc0A@mail.gmail.com>
X-Gm-Features: AQ5f1JooAlnkejX_MdsTMaVu9j41bzBNW_W_5Is0kGcf1u71RFlzJHWfw5f8HIQ
Message-ID: <CAGjw+kOHgFFfinHB5+F0gf8+Azvz_k8mMEsEJm5eYhG-dHuc0A@mail.gmail.com>
To: announce@trafficserver.apache.org, Dev <dev@trafficserver.apache.org>, 
	users <users@trafficserver.apache.org>, security@trafficserver.apache.org
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000008679b80631d0e6fa"
Subject: [oss-security] [ANNOUNCE] ATS is vulnerable to request smuggling via chunked messages

--0000000000008679b80631d0e6fa
Content-Type: text/plain; charset="UTF-8"

Description:
ATS is vulnerable to request smuggling via chunked messages

CVE:
CVE-2024-53868 - Chunked message body allows request smuggling

Reported By:
Jeppe Bonde Weikop (CVE-2024-53868)

Vendor:
The Apache Software Foundation

Version Affected:
ATS 9.0.0 to 9.2.9
ATS 10.0.0 to 10.0.4

Mitigation:
9.x users should upgrade to 9.2.10 or later versions
10.x users should upgrade to 10.0.5 or later versions

CVE:
https://www.cve.org/CVERecord?id=CVE-2024-53868

--0000000000008679b80631d0e6fa--
