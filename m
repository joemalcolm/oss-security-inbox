X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1664" "Thursday" "13" "September" "2018" "07:48:28" "+0200" "=?UTF-8?B?R3VpbGxhdW1lIFF1w6lyw6k=?=" "guillaume@quere.eu" "<1055142734.297784.1536817708481@email.1and1.fr>" "47" "[oss-security] Cleartext passwords external services in Squash TM's web interface" nil nil nil "9" "2018091305:48:28" "[oss-security] Cleartext passwords external services in Squash TM's web interface" (number mark "U       guillaume@qu Sep 13   47/1664  " thread-indent "\"[oss-security] Cleartext passwords external services in Squash TM's web interface\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27752 invoked by uid 550); 13 Sep 2018 10:14:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5991 invoked from network); 13 Sep 2018 05:48:40 -0000
Date: Thu, 13 Sep 2018 07:48:28 +0200 (CEST)
From: =?UTF-8?Q?Guillaume_Qu=C3=A9r=C3=A9?= <guillaume@quere.eu>
To: oss-security@lists.openwall.com
Message-ID: <1055142734.297784.1536817708481@email.1and1.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.4-Rev39
X-Originating-Client: open-xchange-appsuite
X-Provags-ID: V03:K1:Occ3dkzjuE4tzDWWsB2Vax8P4Kw33qqpT71kdzbC1ve3i0cZtdG
 tNe9LB4BnigXBF9gTxstxmwpg2hZLXHh/5lY0wAqXqsmNNeOTygyppn+oZvMvGZCn5Zhhqe
 GbKeW/QLMHNIZxiq4dIV4xdM3b8wHM7QogHAkAtPNCqqMK5fxpjIcBO/GoonoLouJmzgm11
 ih8QJtd2kU6KGuxMXiESQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:dwuovRMX7KY=:ohSSbQww3CIKVHa4KhcRNR
 2eZPmFnut0SPEj+IKqCnGRJgQGAMZqNFcZx3Dv/EODLM2P5sVSK1iHISAWpysxqqbIdLEdFDL
 +sbeZbjiIYRNWPOGbDa78aBdaPe38FP3FbR1gbTOOIjjpUBYMTP3K3/dXD0O+J5SjfgvnF0T8
 hfiLBJMtZHQ6LMyi/7gRA3CBQL2Z5NzxzveN81e8GchiMFKiJM7KXiLV/rXwaDfSYPsQEooeP
 7g97E0Dh3C0dNxli+6spKPx080jBUCTbSKnHlSc+e3q9k1JI1eOGSoOwCMSjJ6J4xIrxn29BV
 i+xZkwmWJ+JIMS5bfQg3FmeTGFe4fVwHERcT++ypCcNUT8mPEC15CrUC55S/8/XUxO/GZqtWM
 jugyZAO0ve0PUNrq3luFd6IcDyPuJmwcPdJ7F1FBOptXCQbYxBbiP7g1r42O0yF4R334DeGhZ
 feq/dsVdL1DEGUc1inc6/8sHDQ3Gjr+eOXR79tLuqaJr4S2k9XU6jdHytm+DKXd2DXX2w3uAR
 bda0ip9S7i3Tvv2q+VC5EdkcTNvewbFFYBrSpsqqAQSJe5EzmrhLY4aSYCur5YGfPFmAvwa01
 VrqiG5gxppeTh3q5xCnGCJn1TyvIcnMW8olEM6TvmpUJo2nHUhKJT64kNfgbSv4KAfgTHWY5o
 69K1Buun6hSvMzXv8iFR+p3LHt71SeGlQU66Kmr1OG9Gj2W77oCAaPMYOzPSjtZgnLBBbc0YU
 r/bxAR4+VRWadgCp
Subject: [oss-security] Cleartext passwords external services in Squash TM's web interface

SquashTM
--------
Squash TM is a web interface used to manage test cases. More at: https://ww=
w.squashtest.org/en

Description
-----------
There is a vulnerability in SquashTM's administration panel, where external=
 services (a.k.a. automation servers) are defined: each service's HTML page=
 contains the cleartext password of the service's account. These external s=
ervices could be anything but a popular example is a Jenkins server.

I believe there is no reason that a service should display the password of =
another service, as this gives an attacker the opportunity to spread latera=
lly. If *anything*, the password should be hashed but then again I fail to =
see any reason this information should be provided at all in this context. =
This is somewhat even more exploitable given the fact that Squash's default=
 credentials are admin:admin.

Details
-------
Here's an example URL: http://localhost:8080/squash/administration/test-aut=
omation-servers/1
Here's an extract of the page's source code:
      <label for=3D"ta-server-password">Password</label>
      <div id=3D"ta-server-password" class=3D"display-table-cell" style=3D"=
font-weight: bold;">cleartext_password</div>

Scoring
-------
Attack vector: network
Attack complexity: low=20
Authentication required: yes (admin)
Impacts: confidentiality
CVSS:3.0/AV:N/AC:L/PR:H/UI:N/S:C/C:L/I:N/A:N

Timeline
--------
2018-07-20: Vulnerability reported as a private security bug: https://ci.sq=
uashtest.org/mantis/view.php?id=3D7553
2018-09-11: ACK required from editor
2018-09-13: Disclosure to oss-sec


Unsure if I should request a CVE for this? Seems kinda trivial.

Guillaume Qu=C3=A9r=C3=A9
