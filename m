X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["430" "Tuesday" "24" "August" "2021" "08:32:18" "+0000" "Arpad Boda" "aboda@apache.org" nil "9" "[oss-security] CVE-2021-33191: Apache NiFi - MiNiFi C++: MiNiFi CPP arbitrary script execution is possible on the agent's host machine through the c2 protocol " nil nil nil "8" nil nil (number mark "U       aboda@apache Aug 24    9/430   " thread-indent "\"[oss-security] CVE-2021-33191: Apache NiFi - MiNiFi C++: MiNiFi CPP arbitrary script execution is possible on the agent's host machine through the c2 protocol \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-33191: Apache NiFi - MiNiFi C++: MiNiFi CPP arbitrary script execution is possible on the agent's host machine through the c2 protocol " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1796 invoked by uid 550); 24 Aug 2021 10:54:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3697 invoked from network); 24 Aug 2021 08:32:31 -0000
Content-Type: text/plain; charset=utf-8
From: Arpad Boda <aboda@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <b9120cdb-8cca-699e-bcc2-f4e173b1f2bc@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 24 Aug 2021 08:32:18 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-33191: Apache NiFi - MiNiFi C++: MiNiFi CPP arbitrary
 script execution is possible on the agent's host machine through the c2
 protocol 

Description:

>From Apache NiFi MiNiFi C++ version 0.5.0 the c2 protocol implements an "ag=
ent-update" command which was designed to patch the application binary.=20
This "patching" command defaults to calling a trusted binary, but might be =
modified to an arbitrary value through a "c2-update"
command. Said command is then executed using the same privileges as the app=
lication binary.  This was addressed in version 0.10.0

