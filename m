X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3850" "Friday" "24" "June" "2016" "12:01:11" "-0700" "Alvaro Hoyos" "alvaro.hoyos@onelogin.com" "<0c58fc24-0b8d-48e1-8df8-f580454f8e86@googlegroups.com>" "74" "[oss-security] Re: [CVE-2016-5697] signature wrapping attack vulnerability in ruby-saml prior to version 1.3.0" nil nil nil "6" "2016062419:01:11" "[oss-security] Re: [CVE-2016-5697] signature wrapping attack vulnerability in ruby-saml prior to version 1.3.0" (number mark "U       alvaro.hoyos Jun 24   74/3850  " thread-indent "\"[oss-security] Re: [CVE-2016-5697] signature wrapping attack vulnerability in ruby-saml prior to version 1.3.0\"\n") "<CAAdSu-FbGNfOsfRv9saHTCso0fPQJ+QrJ5JamZf4_gcCq7LD6w@mail.gmail.com>" ("<CAAdSu-FbGNfOsfRv9saHTCso0fPQJ+QrJ5JamZf4_gcCq7LD6w@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23631 invoked by uid 550); 24 Jun 2016 20:01:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10137 invoked from network); 24 Jun 2016 19:01:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=onelogin.com; s=google;
        h=date:from:to:cc:message-id:in-reply-to:references:subject
         :mime-version;
        bh=YB7fvblCMsTQDSqtf9/m2k1TFnVw8yKJhY2xbTGzxdY=;
        b=SGTctJy0KD/I3h7zjnL5jES0WrfaDPT19HEFBgfHkg0Fg9zIU/TYH2aM/2MHhuzQHQ
         QNnuGzHD2y6CeYxGU9kVbK8FTspFqy6N/0MSMl4JmQ4zcpz8iomoiuz7lDBB0o4YDdCR
         ppy0Tapg21uRK4DNG4ev9EIX3aEvblzEUEcpQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:message-id:in-reply-to
         :references:subject:mime-version;
        bh=YB7fvblCMsTQDSqtf9/m2k1TFnVw8yKJhY2xbTGzxdY=;
        b=f+VZZGiqrnPyBaBbezX/JG5AFWAgrBUfkGd0huqx2ae2QjVyAZUNpA+BTBPmHpnlsf
         TCivHXGX8WOjbmOUW+R8NWudYERn1xaX21oxxEtkqR8QrxEAZoZ7SqS0zhJeEFLe/PQs
         0qggDAi92DQhN+ojMtk0EDmz80xWKoMY1HCCdIgpX/o+QUff938kPv/s16GV3Vv+kHuG
         SufyP0SDdyLBSC2VsLcScQuTPvUYfIC+GC8yZyTXQZpRvX33VJTYuXgswsdwAr4VZZ/5
         sizDxXkvhhnCed50KLQdOXuf7fiNQnQjjxZZWKbiqP40ZziN7c+BumF+1NxEPMQFku+N
         A11w==
X-Gm-Message-State: ALyK8tIgm6aCyAZFUq9ptYJ82BJeNwpmdIRd9+ehMOZBoVWddrLqNNrFM0hBO/Cw5VWWH2xfbVZsw78=
X-Received: by 10.157.37.28 with SMTP id k28mr307377otb.18.1466794872178;
        Fri, 24 Jun 2016 12:01:12 -0700 (PDT)
X-Google-Web-Client: true
Date: Fri, 24 Jun 2016 12:01:11 -0700 (PDT)
From: Alvaro Hoyos <alvaro.hoyos@onelogin.com>
To: rubysec-announce <rubysec-announce@googlegroups.com>
Cc: ruby-security-ann@googlegroups.com, oss-security@lists.openwall.com
Message-Id: <0c58fc24-0b8d-48e1-8df8-f580454f8e86@googlegroups.com>
In-Reply-To: <CAAdSu-FbGNfOsfRv9saHTCso0fPQJ+QrJ5JamZf4_gcCq7LD6w@mail.gmail.com>
References: <CAAdSu-FbGNfOsfRv9saHTCso0fPQJ+QrJ5JamZf4_gcCq7LD6w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2358_290521511.1466794871898"
X-Google-Token: EPeGtrsFiCHBk2Enj2Q0
X-Google-IP: 174.46.233.4
Subject: [oss-security] Re: [CVE-2016-5697] signature wrapping attack vulnerability in
 ruby-saml prior to version 1.3.0

------=_Part_2358_290521511.1466794871898
Content-Type: multipart/alternative; 
	boundary="----=_Part_2359_107972653.1466794871898"

------=_Part_2359_107972653.1466794871898
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Thanks to Robert Clancy from swrve.com for discovering and responsibly 
reporting this issue.

On Friday, June 24, 2016 at 11:35:34 AM UTC-7, Alvaro Hoyos wrote:
>
> Overview: 
> Ruby-saml prior to version 1.3.0 is vulnerable to an XML signature 
> wrapping attack. Ruby-saml users must update to 1.3.0 version which 
> implements 3 extra validations to mitigate this kind of attack.
>
> Overall CVSS Score 6.1
>
> Fix: Add extra validations to prevent Signature wrapping attacks [1]
>
> [1] https://github.com/onelogin/ruby-saml
>
> alvaro j hoyos | chief information security officer | 
> alvaro.hoyos@onelogin.com | +1 415.653.1893 | skype: alvaroonelogin
>

------=_Part_2359_107972653.1466794871898
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks to Robert Clancy from <span class=3D"s2"><a href=3D=
"http://swrve.com/">swrve.com</a>=C2=A0for discovering and responsibly repo=
rting this issue.</span><br><br>On Friday, June 24, 2016 at 11:35:34 AM UTC=
-7, Alvaro Hoyos wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0=
;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><div di=
r=3D"ltr"><p style=3D"font-size:12.8px;margin:10px 0px 0px;padding:0px;colo=
r:rgb(51,51,51);font-family:Arial,sans-serif;line-height:20px">Overview:=C2=
=A0<br>Ruby-saml prior to version 1.3.0 is vulnerable to an XML signature w=
rapping attack. Ruby-saml users must update to 1.3.0 version which implemen=
ts 3 extra validations to mitigate this kind of attack.</p><p style=3D"font=
-size:12.8px;margin:10px 0px 0px;padding:0px;color:rgb(51,51,51);font-famil=
y:Arial,sans-serif;line-height:20px">Overall CVSS Score	6.1</p><p style=3D"=
font-size:12.8px;margin:10px 0px 0px;padding:0px;color:rgb(51,51,51);font-f=
amily:Arial,sans-serif;line-height:20px">Fix: Add extra validations to prev=
ent Signature wrapping attacks=C2=A0[1]</p><p style=3D"margin:10px 0px 0px;=
padding:0px"><font color=3D"#333333" face=3D"Arial, sans-serif"><span style=
=3D"font-size:12.8px;line-height:20px">[1]=C2=A0</span></font><font color=
=3D"#3b73af" face=3D"Arial, sans-serif"><span style=3D"font-size:12.8px;lin=
e-height:20px"><a href=3D"https://github.com/onelogin/ruby-saml" target=3D"=
_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;https://www.google=
.com/url?q\x3dhttps%3A%2F%2Fgithub.com%2Fonelogin%2Fruby-saml\x26sa\x3dD\x2=
6sntz\x3d1\x26usg\x3dAFQjCNFC6N42EjkjushynFfsipbbIJRHsA&#39;;return true;" =
onclick=3D"this.href=3D&#39;https://www.google.com/url?q\x3dhttps%3A%2F%2Fg=
ithub.com%2Fonelogin%2Fruby-saml\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNFC=
6N42EjkjushynFfsipbbIJRHsA&#39;;return true;">https://github.com/<wbr>onelo=
gin/ruby-saml</a></span></font></p><div><div><div dir=3D"ltr"><div><div dir=
=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr">=
<div><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr"><div><br></div=
><div><font size=3D"2">alvaro j hoyos | chief information security officer =
| <a href=3D"mailto:alvaro.hoyos@onelogin.com" target=3D"_blank" rel=3D"nof=
ollow" onmousedown=3D"this.href=3D&#39;mailto:alvaro.hoyos@onelogin.com&#39=
;;return true;" onclick=3D"this.href=3D&#39;mailto:alvaro.hoyos@onelogin.co=
m&#39;;return true;">alvaro.hoyos@onelogin.com</a> | +1=C2=A0415.653.1893=
=C2=A0| skype:=C2=A0alvaroonelogin</font></div><div></div></div></div></div=
></div></div></div></div></div></div></div></div></div></div></div></div></=
div>
</div>
</blockquote></div>=

------=_Part_2359_107972653.1466794871898--

------=_Part_2358_290521511.1466794871898--
