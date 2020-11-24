X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["532" "Tuesday" "24" "November" "2020" "18:12:36" "+0100" "Serge Huber" "shuber@apache.org" "<CACR6SAXDk+Ronjh8KQ91q2W4FpiOmiJyjkUe9v4o9L8Bvkhvvw@mail.gmail.com>" "16" "[oss-security] CVE-2020-13942: Remote Code Execution in Apache Unomi" nil nil nil "11" "2020112417:12:36" "[oss-security] CVE-2020-13942: Remote Code Execution in Apache Unomi" (number mark "U       shuber@apach Nov 24   16/532   " thread-indent "\"[oss-security] CVE-2020-13942: Remote Code Execution in Apache Unomi\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-13942: Remote Code Execution in Apache Unomi" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13916 invoked by uid 550); 24 Nov 2020 17:50:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1545 invoked from network); 24 Nov 2020 17:13:00 -0000
X-Gm-Message-State: AOAM530K+mD71Ku66PX8pvdR0nva/ote5sQairqMtvE7f7tmXCUE+Q2P
	+9AkCJMoW4Jt/D9ZSgrCwjuf4IssYxXro2YYxxhkjQ==
X-Google-Smtp-Source: ABdhPJzMWXHqKYAoqRhhwpSHIhTIIeyfm5EBiuki5M+RMbcgJnqaHzxwp5pQqq9nKNdU3dW31JaP2G+9LKdK48oNjOA=
X-Received: by 2002:a05:651c:1195:: with SMTP id w21mr2123332ljo.427.1606237967346;
 Tue, 24 Nov 2020 09:12:47 -0800 (PST)
MIME-Version: 1.0
From: Serge Huber <shuber@apache.org>
Date: Tue, 24 Nov 2020 18:12:36 +0100
X-Gmail-Original-Message-ID: <CACR6SAXDk+Ronjh8KQ91q2W4FpiOmiJyjkUe9v4o9L8Bvkhvvw@mail.gmail.com>
Message-ID: <CACR6SAXDk+Ronjh8KQ91q2W4FpiOmiJyjkUe9v4o9L8Bvkhvvw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000007804a605b4dd6bd5"
Subject: [oss-security] CVE-2020-13942: Remote Code Execution in Apache Unomi

--0000000000007804a605b4dd6bd5
Content-Type: text/plain; charset="UTF-8"

Description:

It is possible to inject malicious OGNL or MVEL scripts into the
/context.json public endpoint. This was partially fixed in 1.5.1 but a
new attack vector was found. In version 1.5.2 scripts are now
completely filtered from the input. It is highly recommended to
upgrade to the latest available version of the 1.5.x release to fix
this problem.
References:

http://unomi.apache.org./security/cve-2020-13942.txt

--0000000000007804a605b4dd6bd5--
