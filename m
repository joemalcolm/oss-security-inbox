X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2876" "Wednesday" "9" "March" "2016" "20:37:24" "-0500" "John Scott" "jms3rd@gmail.com" "<etPan.56e0cfd4.9be1f21.1ae@MonkeyBook>" "83" "RE: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies" nil nil nil "3" "2016031001:37:24" "[oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies" (number mark "U       jms3rd@gmail Mar  9   83/2876  " thread-indent "\"RE: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies\"\n") "<CY1PR09MB0873F6FEB038FFA58DC4C7D7C7B30@CY1PR09MB0873.namprd09.prod.outlook.com>" ("<CANO=Ty3pi9EBe-yARnJamWb1hW9p0Bztmj_Gr9SyWyXDqfCLDQ@mail.gmail.com>" "<E1adjOu-0005MK-Kx@rmm6prod02.runbox.com>" "<CANO=Ty1cSnXsM01ebMNTvKLeaoPy0t7Mucb9EFAprr95rXFvSw@mail.gmail.com>" "<CY1PR09MB0873F6FEB038FFA58DC4C7D7C7B30@CY1PR09MB0873.namprd09.prod.outlook.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23847 invoked by uid 550); 10 Mar 2016 09:52:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18323 invoked from network); 10 Mar 2016 01:37:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version;
        bh=pBfwMkJGt9oPKFdZt1bhUOzbmn1I6ab0ThQy8Lon+N8=;
        b=L0a1G0H3m+/9VEp3mI/RJ/YRWmqlGDROrOksoYC5C96Dl/RW/vBDSLZUKd4TzAMNzQ
         cljZ7gHgY2fcZalVPjtEurJI3+zlDNcqk89FswLsPQ2SnlMf3zF9kJTSuiLfl+6Eryhw
         jM1gVI5XOVrXb0pfQ15mBa+OgzmESpSzz+F9HpuDUvoTtVaTKvkArPrfvSTH/bxX4/P7
         oTgQxyR3RpBEmVPypaM6g7xEM5aRxYhcCZQnAk+PJpfW4gL7F122g+1PJfQ6VQA3Zdg+
         DyJYNEuVWT4m5SVKwvopHRbkEFkoW9PviHqAeFDxRzh7mccjMhri2JbSkLSQcqfs411O
         8NEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:message-id:in-reply-to:references
         :subject:mime-version;
        bh=pBfwMkJGt9oPKFdZt1bhUOzbmn1I6ab0ThQy8Lon+N8=;
        b=eDerSLJrA8oi4xJ2ICa/fQZzrpTtJt+3MvVCOQl9VNZybf5hBbe4Mo4T9hSVRvodK7
         IkWcYQ95BpsX4aqlfUbmV8dnt7GvzPcFdmBJaGhEmxcGAf675veseZe4BHZaTuNi4Xi2
         BwWW1I8Xn7Swflb7OUCZ15WxBLgWj2qay7d8ToFXs3iMsFkjaeh8/mIAtwKD1o1tf0WG
         Qo2svGFmm9RknllnZa2Cr8fK9zS5en/xw+hJNBdOp2tPWbLUXLy6N5dTxEs9vscKJ16h
         EELTEQgD0obvrqCDIdVzlfrsmxgNE6Y5LwsMd08aE6vmPGd+PmV3OjpZbc7GUzFERxf+
         Vrqw==
X-Gm-Message-State: AD7BkJIKj3qnGzPkRCdta8qkZ2qvoRegA45L22j1+qMJKEw+jOJva9xpH99mVSrkK/o1PQ==
X-Received: by 10.140.92.151 with SMTP id b23mr923807qge.88.1457573849322;
        Wed, 09 Mar 2016 17:37:29 -0800 (PST)
Date: Wed, 9 Mar 2016 20:37:24 -0500
From: John Scott <jms3rd@gmail.com>
To: oss-security@lists.openwall.com, cve-editorial-board-list
 <cve-editorial-board-list@lists.mitre.org>, 
 "=?utf-8?Q?Boyle=2C_Stephen_V.?=" <sboyle@mitre.org>, "David A. Wheeler"
 <dwheeler@dwheeler.com>
Message-ID: <etPan.56e0cfd4.9be1f21.1ae@MonkeyBook>
In-Reply-To: <CY1PR09MB0873F6FEB038FFA58DC4C7D7C7B30@CY1PR09MB0873.namprd09.prod.outlook.com>
References: <CANO=Ty3pi9EBe-yARnJamWb1hW9p0Bztmj_Gr9SyWyXDqfCLDQ@mail.gmail.com>
 <E1adjOu-0005MK-Kx@rmm6prod02.runbox.com>
 <CANO=Ty1cSnXsM01ebMNTvKLeaoPy0t7Mucb9EFAprr95rXFvSw@mail.gmail.com>
 <CY1PR09MB0873F6FEB038FFA58DC4C7D7C7B30@CY1PR09MB0873.namprd09.prod.outlook.com>
X-Mailer: Airmail (351)
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="56e0cfd4_50a159b8_1ae"
Subject: RE: [oss-security] Concerns about CVE coverage shrinking -
 direct impact to researchers/companies

--56e0cfd4_50a159b8_1ae
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Could this process be a whole lot less opaque? It seems there are more smar=
t people outside the room who would love to participate, help, etc. than ar=
e inside MITRE.
Maybe this whole thing could be turned into a public/private partnership wi=
th one of the larger =C2=A0groups, OSI, Linux Foundation, etc.=C2=A0
js

-------------------------------------------
John Scott
=C2=A0240.401.6574
< jms3rd@gmail.com >
http://powdermonkey.blogs.com
@johnmscott

On March 9, 2016 at 3:29:42 PM, Boyle, Stephen V. (sboyle@mitre.org) wrote:

Hi Kurt and David,=20=20

The CVE team is holding a series of internal meetings related to the refere=
nced issues, including one tomorrow. There is not a meeting with the Editor=
ial Board (or a subset of Editorial Board members) scheduled for or being h=
eld tomorrow.=20=20

We would like to propose an Editorial Board meeting to address issues relat=
ed to CVE operations, scalability, and community feedback, as was first sug=
gested by Kent Landfield on January 5, 2016. (Full discussion thread availa=
ble at: http://common-vulnerabilities-and-exposures-cve-editorial-board.112=
8451.n5.nabble.com/CVE-Advancements-tt81.html)=20=20

The internal meetings referenced above will enable us to come to that Edito=
rial Board meeting with specific recommendations and proposed next steps.=
=20=20

Best Regards,=20=20
The MITRE CVE Team=20=20

-----Original Message-----=20=20
From: Kurt Seifried [mailto:kseifried@redhat.com]=20=20
Sent: Wednesday, March 09, 2016 2:06 PM=20=20
To: David A. Wheeler <dwheeler@dwheeler.com>; cve-editorial-board-list <cve=
-editorial-board-list@lists.mitre.org>=20=20
Cc: oss-security <oss-security@lists.openwall.com>=20=20
Subject: Re: [oss-security] Concerns about CVE coverage shrinking - direct =
impact to researchers/companies=20=20

On Wed, Mar 9, 2016 at 12:04 PM, David A. Wheeler <dwheeler@dwheeler.com>=
=20=20
wrote:=20=20

> All - I've chatted with some of the people who fund the CVE work at MITRE=
.=20=20
> I've learned that CVEs *are* being issued, but obviously that is happenin=
g=20=20
> too slowly.=20=20
>=20=20
> They're having a meeting tomorrow (March 10) to try to figure out what=20=
=20
> the problems are and how to fix it. I don't know what they'll do.=20=20
> However, I'm hopeful that this will mean that the CVE work will get=20=20
> back on track soon.=20=20
>=20=20
> --- David A. Wheeler=20=20
>=20=20

This is literally the first I'm hearing of this, will any board members be=
=20=20
present?=20=20


--=20=20

--=20=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud=20=20
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993=20=20
Red Hat Product Security contact: secalert@redhat.com=20=20

--56e0cfd4_50a159b8_1ae--

