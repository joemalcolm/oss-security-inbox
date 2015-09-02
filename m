X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1702" "Wednesday" "2" "September" "2015" "15:00:25" "+0200" "Matthias Bussonnier" "bussonniermatthias@gmail.com" "<A8A4C292-C37B-425F-88C1-F7955DA039A9@gmail.com>" "63" "[oss-security] CVE Request : CSRF in IPython/Jupyter notebook Tree." nil nil nil "9" "2015090213:00:25" "[oss-security] CVE Request : CSRF in IPython/Jupyter notebook Tree." (number mark "U       bussonnierma Sep  2   63/1702  " thread-indent "\"[oss-security] CVE Request : CSRF in IPython/Jupyter notebook Tree.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24541 invoked by uid 550); 2 Sep 2015 13:10:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19898 invoked from network); 2 Sep 2015 13:00:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:content-type:content-transfer-encoding:subject:date:message-id
         :cc:to:mime-version;
        bh=6nxBzw8bCqwmxYuFv/MKEEXRBI46oBHpC9R9ghG9jOM=;
        b=YM44WcObCVaYd9RZ/IzAUlZUAMry3udECeQ58I2B+BRdE1ZrR8s0sWW8B4QQiTFxnL
         Y6y14x09nFJ/EQ+Ev/qYoh8abGW1ywwSuYWwK+kxW91xbtWbtRWGWhK/ueSO4YFn3Csk
         enxzRQdWlg2245PrnQd2g+55alg6hBN0IKpOUtQTqa3WIn6b1Sekt9rbfxnE9KiTSuMZ
         rVd0YbHw925MPbCQ4blrTsn2JWYN68BvpOlswmIT0Yv/D+CWZoxAfVLTAQLqsAYZHozh
         x2gMyBvlQ+vZvd4bFu6eufNbqBV8DkZG5n72yBhCbXSQnO2B0aFdQtlOL94rzKa84sVT
         ZWNw==
X-Received: by 10.180.105.202 with SMTP id go10mr4060782wib.91.1441198826902;
        Wed, 02 Sep 2015 06:00:26 -0700 (PDT)
From: Matthias Bussonnier <bussonniermatthias@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 2 Sep 2015 15:00:25 +0200
Message-Id: <A8A4C292-C37B-425F-88C1-F7955DA039A9@gmail.com>
Cc: security@ipython.org,
 Kyle Kelley <rgbkrk@gmail.com>,
 Jonathan Kamens <jkamens@quantopian.com>,
 thebrowfc@gmail.com
To: oss-security@lists.openwall.com
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2098\))
X-Mailer: Apple Mail (2.2098)
Subject: [oss-security] CVE Request : CSRF in IPython/Jupyter notebook Tree.


Email addresses of requester: security@ipython.org; rgbkrk@gmail.com; busso=
nniermatthias@gmail.com; thebrowfc@gmail.com; jkamens@quantopian.com=20

Software name: IPython notebook / Jupyter notebook

Type of vulnerability: CSRF

Attack outcome: Possible remote execution
Patches:
  3.x: `3ab41641cf6fce3860c73d5cf4645aa12e1e5892` (https://github.com/ipyth=
on/ipython/commit/3ab41641cf6fce3860c73d5cf4645aa12e1e5892)
  4.0.x: `dd9876381f0ef09873d8c5f6f2063269172331e3` (https://github.com/jup=
yter/notebook/commit/dd9876381f0ef09873d8c5f6f2063269172331e3)
  4.x: `35f32dd2da804d108a3a3585b69ec3295b2677ed` (https://github.com/jupyt=
er/notebook/commit/35f32dd2da804d108a3a3585b69ec3295b2677ed)


Affected versions: 0.12 =E2=89=A4 version =E2=89=A4 4.0

(Note, software change name between 3.x and 4.0)

Summary: Local folder name was used in HTML templates without escaping, all=
owing CSRF in said pages by carefully crafting folder name and URL to acces=
s it.


URI with issues:

* GET /tree/**

Mitigations:

Start notebook server with the following flag:

--NotebookApp.jinja_environment_options=3D'{"autoescape":True}'

Or set the following configuration option:

c.NotebookApp.jinja_environment_options =3D {"autoescape": True}


Upgrade to IPython/Jupyter notebook 4.0.5, 4.1 or 3.2.2 once available.
If using pip,

    pip install --upgrade `ipython[notebook]<4.0`  # for 3.2.2
    pip install --upgrade notebook # for 4.1


For conda:

    conda update conda
    conda update ipython 'ipython-notebook<4.0' # for 3.2.2
    conda update notebook # for 4.1 or 4.0.5


Vulnerability was found by Juan Broull=C3=B3n, and reported by Jonathan Kam=
ens at Quantopian.

Thanks !
--=20
Matthias

