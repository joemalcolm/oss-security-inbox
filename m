X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1465" "Wednesday" "16" "September" "2015" "15:02:06" "+0200" "MinRK" "benjaminrk@gmail.com" "<CAHNn8BV_zT_eADA1DGDwQNG2EQQraW0nAe42z5ft+8P=5L5MZw@mail.gmail.com>" "52" "[oss-security] CVE Request: Maliciously crafted text files in IPython/Jupyter editor" nil nil nil "9" "2015091613:02:06" "[oss-security] CVE Request: Maliciously crafted text files in IPython/Jupyter editor" (number mark "        benjaminrk@g Sep 16   52/1465  " thread-indent "\"[oss-security] CVE Request: Maliciously crafted text files in IPython/Jupyter editor\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3944 invoked by uid 550); 16 Sep 2015 14:14:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11440 invoked from network); 16 Sep 2015 13:02:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:cc:content-type;
        bh=M/4w6lWVSOlk0D2/sT1esK8SYa9byFERCOjT4DR4OSs=;
        b=JhVvDMjjfhkAMP4ohKbDaTIkT5sbDivilnDBRcCo+XOy46VbBkJ5uuOaQ0xw/8QQnj
         9Zp1XPPPF1UL9A9RK9ldEH5B/hsDTVOf5jtO2yrdWCPUc1nokOpt47vHxq8ND/dkQ8if
         BZyXcg54DIQw8ofSgZpZDlkSqaQA1Ph2ZDjENDn5COEKXwD+tMJMJ2mV5EqUHI03Ay0x
         XZTJe3RSiJJV10BR6Py3jxCRHkgjoR5H/HR2gka+pOhBL9+djAGhkCwbFV9qvnb7tA2l
         sQrelyFNHt0QTfs3lnaX/3tL1GTEyQ2tl21P24Ug3gUFLGrUypcW4AcfN2tzEAh7nFSQ
         LOrw==
X-Received: by 10.140.232.73 with SMTP id d70mr42931725qhc.72.1442408545947;
 Wed, 16 Sep 2015 06:02:25 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAHNn8BV_zT_eADA1DGDwQNG2EQQraW0nAe42z5ft+8P=5L5MZw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1136fe7200b1b2051fdce95d
Cc: security <security@ipython.org>, Kyle Kelley <rgbkrk@gmail.com>, 
	Jonathan Kamens <jkamens@quantopian.com>, Scott Sanderson <ssanderson@quantopian.com>
Date: Wed, 16 Sep 2015 15:02:06 +0200
From: MinRK <benjaminrk@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: Maliciously crafted text files in IPython/Jupyter editor
To: oss-security@lists.openwall.com

--001a1136fe7200b1b2051fdce95d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Email address of requester: security@ipython.org, benjaminrk@gmail.com,
rgbkrk@gmail.com, jkamens@quantopian.com, ssanderson@quantopian.com

Software name: IPython notebook / Jupyter notebook
Type of vulnerability: Maliciously forged file
Attack outcome: Possible remote execution

Vulnerability: A maliciously forged file opened for editing can execute
javascript, specifically by being redirected to /files/ due to a failure to
treat the file as plain text.

Affected versions:

- IPython 3.0 =E2=89=A4 version =E2=89=A4 3.2.1
- notebook 4.0 =E2=89=A4 4.0.4

URI with issues:

- GET /edit/**

Patches:

- IPython 3.x: 0a8096adf165e2465550bd5893d7e352544e5967 (
https://github.com/ipython/ipython/commit/0a8096adf165e2465550bd5893d7e3525=
44e5967
)
- Jupyter 4.0.x: 9e63dd89b603dfbe3a7e774d8a962ee0fa30c0b5 (
https://github.com/jupyter/notebook/commit/9e63dd89b603dfbe3a7e774d8a962ee0=
fa30c0b5
)

Mitigations:

Upgrade to IPython/Jupyter notebook 4.0.5, 4.1 or 3.2.2 once available.
If using pip,

    pip install --upgrade "ipython[notebook]<4.0"  # for 3.2.2
    pip install --upgrade notebook # for 4.1 or 4.0.5

For conda:

    conda update conda
    conda update ipython "ipython-notebook<4.0" # for 3.2.2
    conda update notebook # for 4.1 or 4.0.5

Vulnerability reported by Jonathan Kamens at Quantopian

--001a1136fe7200b1b2051fdce95d--
