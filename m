X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2090" "Tuesday" "26" "May" "2015" "13:56:13" "+0200" "Douwe Maan" "douwe@gitlab.com" "<etPan.55645f5d.19495cff.34b@Douwes-MacBook-Pro.local>" "70" "[oss-security] CVE Request: CSRF vulnerability in OmniAuth request phase" nil nil nil "5" "2015052611:56:13" "[oss-security] CVE Request: CSRF vulnerability in OmniAuth request phase" (number mark "U       douwe@gitlab May 26   70/2090  " thread-indent "\"[oss-security] CVE Request: CSRF vulnerability in OmniAuth request phase\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31857 invoked by uid 550); 26 May 2015 13:10:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7849 invoked from network); 26 May 2015 11:56:27 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:message-id:subject:mime-version
         :content-type;
        bh=EwAQjOInNyxAm+4xkLsHi65WOWhF6VrR/StQfs1Oaps=;
        b=YHoTUkQ1jq6rUx9vSKAWadBr/HsfoyE7HriAhJnJqOhdVtQWVugAWMo1MSHCmQ9Bny
         BZG6mcjFCOXA78afIhBoQ8kePhHSiWUinyUUgszbXk2SGTRw/u1Ru4W7kWADctGcYC8+
         /Ml1VXBjzwpTEaYo/5gfR/tSBgWaRawS8S7PjEUtvP0Ezxj6dKQuSFnQ3f+w2cFJqt2B
         8iiwdKmhhlLrFYw/lFdt8BOAg9KMx47HRzjhfKKNa1/cCFHFQ7NfTbtamXmWKHN43Lze
         VwUSfwQoXZ8dyXB1/jYb/+xRt9UCcBuCR2SoLCkV6duWlwVmeQ04W/TppLUTHV6uvCQO
         wqdQ==
X-Gm-Message-State: ALoCoQn4M2qDPtdZ7wssJ683cn6G3RwvPIuuIw6r9tx2IY8uxrO/WIcGkUu59bNvwDAQjG30YkJ1
X-Received: by 10.194.82.167 with SMTP id j7mr7316695wjy.123.1432641376217;
        Tue, 26 May 2015 04:56:16 -0700 (PDT)
Date: Tue, 26 May 2015 13:56:13 +0200
From: Douwe Maan <douwe@gitlab.com>
To: oss-security@lists.openwall.com
Cc: Erik Michaels-Ober <sferik@gmail.com>
Message-ID: <etPan.55645f5d.19495cff.34b@Douwes-MacBook-Pro.local>
X-Mailer: Airmail (286)
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="55645f5d_2ae8944a_34b"
Subject: [oss-security] CVE Request: CSRF vulnerability in OmniAuth request phase

--55645f5d_2ae8944a_34b
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Affected software:=C2=A0
- Ruby gem (library) OmniAuth[0]
- Gems that use OmniAuth, e.g. Devise[1]

Type of vulnerability:=C2=A0
Cross-Site Request Forgery

Original report by:=C2=A0
Mohamed Abdelbaset Elnoby, Senior Information Security Analyst at Seekurity=
.com[2]
[The website Seekurity.com isn=E2=80=99t currently working.]

Summary:

OmniAuth is a library used in Ruby web applications to authenticate users u=
sing=C2=A0
external services, for example OAuth providers.=C2=A0

The request phase of OmniAuth is vulnerable to Cross-Site Request Forgery. =
This=C2=A0
is the step that actually connects an external account (on a connected OAut=
h=C2=A0
provider) to an internal account (on the web application itself). This mean=
s=C2=A0
that when a client is signed into an account on the web application, and si=
gned=C2=A0
into an account on a connected OAuth provider, these two accounts can be=C2=
=A0
connected without user intent, user interaction or feedback to the user. Fr=
om=C2=A0
here on out, the external account can be used to sign into the web applicat=
ion=C2=A0
as the internal account.=C2=A0

If the sign in action at a connected OAuth provider is vulnerable to CSRF, =
an=C2=A0
attacker can force the victim=E2=80=99s client to be logged into the extern=
al service=C2=A0
using an account beloning to the attacker, can then force this external acc=
ount=C2=A0
to be connected to the internal account, and can from here on out use their=
=C2=A0
account on the external service to log into the victim=E2=80=99s account on=
 the targeted=C2=A0
application.

We are aware of one large OAuth provider where the sign in action is or was=
=C2=A0
vulnerable to CSRF.

Issue report and patch:=C2=A0
https://github.com/intridea/omniauth/pull/809

References:
[0] https://github.com/intridea/omniauth
[1] https://github.com/plataformatec/devise
[2] https://twitter.com/symbiansymoh

Thanks,

Douwe Maan
GitLab=

--55645f5d_2ae8944a_34b--

