X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1039" "Monday" "11" "May" "2015" "20:03:28" "+0100" "=?UTF-8?B?UMOhZHJhaWMgQnJhZHk=?=" "padraic.brady@gmail.com" "<CALwr1G=mfjVLrsYN0Yi33UV82F3520Nsm0CpFbFx-AB1J5D+rA@mail.gmail.com>" "33" "[oss-security] CVE Request: Insufficient TLS Protection in Composer (PHP)" nil nil nil "5" "2015051119:03:28" "[oss-security] CVE Request: Insufficient TLS Protection in Composer (PHP)" (number mark "        padraic.brad May 11   33/1039  " thread-indent "\"[oss-security] CVE Request: Insufficient TLS Protection in Composer (PHP)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15597 invoked by uid 550); 11 May 2015 19:03:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15579 invoked from network); 11 May 2015 19:03:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type
         :content-transfer-encoding;
        bh=6LJzspHxMXe1OkBw1TtFLRmnYje1hQ5EiCt+mwPkWJY=;
        b=I+75EQHBQpnS02IdqgXuYij17oWURs/lldMTX2Xy+YD/c/ycwktkCd5wB7xIbH9pZx
         8BD9y4Fo63FdLnkUcOTscE66/CXgVoKZVtVknRcg3iyjnGQbMJb81WWR5bwQYubLgllB
         3MD0Jgo6ZeX0XDkS9TFScKz67Ckk2Y207lv+wiUS4u9kOZaOu6ty1x3QXroeYwm/ec0k
         CwdeSn5MxtngymXcPvU0I7C5Z/DwtihYHg3z2Pp6uWjED11sG2UQMAVRTGQDv1hwnu6n
         W2F+TwYw4E6hHoUvzi9Z0aHmEm41wPw4E8mGsEUcV1aPv/zOFgM/KBl/NtBNOoBoxP8C
         mUAQ==
MIME-Version: 1.0
X-Received: by 10.194.248.132 with SMTP id ym4mr23736685wjc.74.1431371008878;
 Mon, 11 May 2015 12:03:28 -0700 (PDT)
Message-ID: <CALwr1G=mfjVLrsYN0Yi33UV82F3520Nsm0CpFbFx-AB1J5D+rA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 11 May 2015 20:03:28 +0100
From: =?UTF-8?Q?P=C3=A1draic_Brady?= <padraic.brady@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: Insufficient TLS Protection in Composer (PHP)
To: oss-security@lists.openwall.com, cve-assign@mitre.org

Hi all,

A brief update to clarify this is a CVE request in the subject line
and copy the guys at MITRE. Also to clarify that this vulnerability
occurs from relying the PHP openssl extensions default configuration.
That default configuration disables peer verification on PHP versions
less than PHP 5.6 (when it was significantly reworked to be more
secure by default).

On 25 April 2015 at 19:49, P=C3=A1draic Brady <padraic.brady@gmail.com> wro=
te:
> My I request a CVE ID for the following, which is a publicly disclosed
> unpatched vulnerability on Composer's issue tracker since 2012.
> Composer is an open source package manager for PHP. The specific issue
> pertaining to this request is a failure to perform TLS peer
> verification on remote requests when making any API request or
> retrieving any file, i.e. there is a singular client class.
>
> Ref: https://github.com/composer/composer/issues/1074
>
> Kind regards,
> Paddy
>
> --
> P=C3=A1draic Brady

Kind regards,
Paddy

--
P=C3=A1draic Brady

http://blog.astrumfutura.com
