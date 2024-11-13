Received: (qmail 29760 invoked by uid 550); 13 Nov 2024 18:03:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3085 invoked from network); 13 Nov 2024 17:01:38 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: AOJu0YxjEBvtSTnlFSLs9nCDiHVhfceq6ftk82zTP2z79xsbYp2MyFWb
	P/S40BBP3RRRsRH+C9MMLI2X4fnLcxpFEPdb5aoLapvFB6zFiJrKTd82lFaeWPKE+3rEPTa0/pf
	Ue/3gOP4+65Rhw2vkZmio/Jovp5M=
X-Google-Smtp-Source: AGHT+IGhmGnqEtISV5SrhsLlBHUlTwzuRoGJTnRXq3mbkU68EsNpX9XgEALX+0Z+U+O3x9WH+Rgj/hvqCtFvV9lOWOU=
X-Received: by 2002:a05:690c:6b11:b0:6ea:8236:d1fa with SMTP id
 00721157ae682-6eaddd8ad21mr198106757b3.4.1731517179573; Wed, 13 Nov 2024
 08:59:39 -0800 (PST)
MIME-Version: 1.0
From: Masakazu Kitajo <maskit@apache.org>
Date: Wed, 13 Nov 2024 09:59:27 -0700
X-Gmail-Original-Message-ID: <CAGjw+kN1gKKNb3LsKdQNAVk4bkNtr-J6pcQKkXL37xmmvtMyEw@mail.gmail.com>
Message-ID: <CAGjw+kN1gKKNb3LsKdQNAVk4bkNtr-J6pcQKkXL37xmmvtMyEw@mail.gmail.com>
To: announce@trafficserver.apache.org, Dev <dev@trafficserver.apache.org>, 
	users <users@trafficserver.apache.org>, security@trafficserver.apache.org
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000069463c0626ce42c1"
Subject: [oss-security] [ANNOUNCE] Apache Traffic Server is vulnerable to specific user inputs

--00000000000069463c0626ce42c1
Content-Type: text/plain; charset="UTF-8"

Description:
Apache Traffic Server is vulnerable to specific user inputs

CVE:
CVE-2024-38479 - Cache key plugin is vulnerable to cache poisoning attack
CVE-2024-50305 - Valid Host field value can cause crashes
CVE-2024-50306 - Server process can fail to drop privilege

Reported By:
Bryan Call (CVE-2024-38479)
Masakazu Kitajo (CVE-2024-50305)
Jeffrey BENCTEUX (CVE-2024-50306)

Vendor:
The Apache Software Foundation

Version Affected:
ATS 9.0.0 to 9.2.5 (CVE-2024-38479, CVE-2024-50305, CVE-2024-50306)
ATS 10.0.0 to 10.0.1 (CVE-2024-50306)

Mitigation:
9.x users should upgrade to 9.2.6 or later versions
10.x users should upgrade to 10.0.2 or later versions

CVE:
https://www.cve.org/CVERecord?id=CVE-2024-38479
https://www.cve.org/CVERecord?id=CVE-2024-50305
https://www.cve.org/CVERecord?id=CVE-2024-50306

--00000000000069463c0626ce42c1--
