X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["23420" "Thursday" "19" "August" "2021" "09:37:07" "-0700" "Aaron Patterson" "aaron.patterson@gmail.com" nil "438" "[oss-security] [CVE-2021-22942] Possible Open Redirect in Host Authorization Middleware" nil nil nil "8" nil nil (number mark "U       aaron.patter Aug 19  438/23420 " thread-indent "\"[oss-security] [CVE-2021-22942] Possible Open Redirect in Host Authorization Middleware\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2021-22942] Possible Open Redirect in Host Authorization Middleware" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22426 invoked by uid 550); 20 Aug 2021 00:45:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5692 invoked from network); 19 Aug 2021 16:37:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=zX8Se+bxoHOMc2UcQijh//CysDkedyOeN+H536xnpyw=;
        b=TJ6VsO18PZbvKzZLJRCWQquZZLBeSZQRNZMMERvr1hS1yabJlk2qJpKs8iGD2BLyVR
         mpuAbDGWKz+Za3+hijujwgkuNft4qU3MNYY275HUqJm1qe60+9uSL6/cVGUxaS/fzCC2
         IWf5ISi/8z20trstvM0zoTbGZn/fQhMwbjtZaGWnQZYD4hfxcPwZZD/nzAOM0msqot0e
         12ITM3rzuQamwHeTsoo+wSjdb0qt+5l4hojTdR8cupijslhKRH1lZFaVR5gp4+nUJXsH
         +kyA7Eu+Ay3KxwL0qIUL5ZZ8Hez0BW5F/n07g7E7sL9tAroAlIIp1DRgs8GQpV9GcHyE
         qgag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=zX8Se+bxoHOMc2UcQijh//CysDkedyOeN+H536xnpyw=;
        b=lnc9e0Ms8RWSTfmBkRXHIiNr1Lw/YXvh3SxA2JUI+aWEQtR9gRzG8vLYTmIA6tx22w
         h5St5h7fmsZVSrwpYcBOaKrQTGuIh22oTGx/MAXWdKEt7FDniIy524eT+7KMO/L9ZQZC
         qmUJk0nLXlVbJU9e6GYT7zksTUfUe+sWJ9bk0z3RfYpSyLgKXcyBHlb1IGiIMzJFhddV
         5UDQm6PfZ8aAUIIjiDSOS4Nh/W4NSjH0W/WKqZEq5fodF/JU2+Yffbo8khPmzhf729hY
         IuQFWoZfVEdJWqMD7zu2/F0ZkzG4+HVLDzC3f1VNHUZHvPt58xokGuAsPqxhW3f9u7EB
         7gUA==
X-Gm-Message-State: AOAM531CkeB6ckc5biXCxSUxoUl6YTeYeh2thGG5UwsZSlHwYJw9Q6pV
	nBmtnJHLA2XOpW2NAfvc5usyRHb/ZKbRIaIHaus=
X-Google-Smtp-Source: ABdhPJzcQIx6b8PrTroEfU8j1ryDuu2ELn1aZxkoC4dJ2UYoDHJQvlTUm6gz7wcTjjPDqHsBfdBjDstKC8aIDdbl+gs=
X-Received: by 2002:a17:906:cd02:: with SMTP id oz2mr16722397ejb.227.1629391038972;
 Thu, 19 Aug 2021 09:37:18 -0700 (PDT)
MIME-Version: 1.0
From: Aaron Patterson <aaron.patterson@gmail.com>
Date: Thu, 19 Aug 2021 09:37:07 -0700
Message-ID: <CALBaBG8tfVjMWjpaJ1Rg9VjD7XqQSBqz3MpOWJgOtB9V=Mw54A@mail.gmail.com>
To: ruby-security-ann@googlegroups.com, rubyonrails-security@googlegroups.com, 
	oss-security@lists.openwall.com
Content-Type: multipart/mixed; boundary="000000000000142c2105c9ec2a71"
Subject: [oss-security] [CVE-2021-22942] Possible Open Redirect in Host Authorization Middleware

--000000000000142c2105c9ec2a71
Content-Type: multipart/alternative; boundary="000000000000142c2005c9ec2a6f"

--000000000000142c2005c9ec2a6f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

# Possible Open Redirect in Host Authorization Middleware

There is a possible open redirect vulnerability in the Host Authorization
middleware in Action Pack. This vulnerability has been assigned the CVE
identifier CVE-2021-22942.

Versions Affected:  >=3D 6.0.0.
Not affected:       < 6.0.0
Fixed Versions:     6.1.4.1, 6.0.4.1

Impact
------
Specially crafted "X-Forwarded-Host" headers in combination with certain
"allowed host" formats can cause the Host Authorization middleware in Action
Pack to redirect users to a malicious website.

Impacted applications will have allowed hosts with a leading dot. For
example,
configuration files that look like this:

```
config.hosts <<  '.EXAMPLE.com'
```

When an allowed host contains a leading dot, a specially crafted Host header
can be used to redirect to a malicious website.

This vulnerability is similar to CVE-2021-22881, but CVE-2021-22881 did not
take in to account domain name case sensitivity.

Releases
--------
The fixed releases are available at the normal locations.

Workarounds
-----------
In the case a patch can=E2=80=99t be applied, the following monkey patch ca=
n be used
in an initializer:

```ruby
module ActionDispatch
  class HostAuthorization
    HOSTNAME =3D /[a-z0-9.-]+|\[[a-f0-9]*:[a-f0-9.:]+\]/i
    VALID_ORIGIN_HOST =3D /\A(#{HOSTNAME})(?::\d+)?\z/
    VALID_FORWARDED_HOST =3D /(?:\A|,[ ]?)(#{HOSTNAME})(?::\d+)?\z/

    private
      def authorized?(request)
        origin_host =3D
request.get_header("HTTP_HOST")&.slice(VALID_ORIGIN_HOST, 1) || ""
        forwarded_host =3D
request.x_forwarded_host&.slice(VALID_FORWARDED_HOST, 1) || ""
        @permissions.allows?(origin_host) && (forwarded_host.blank? ||
@permissions.allows?(forwarded_host))
      end
  end
end
```

Patches
-------
To aid users who aren't able to upgrade immediately we have provided
patches for
the two supported release series. They are in git-am format and consist of a
single changeset.

* 6-0-host-authorzation-open-redirect.patch - Patch for 6.0 series
* 6-1-host-authorzation-open-redirect.patch - Patch for 6.1 series

Please note that only the 6.1.Z, 6.0.Z, and 5.2.Z series are supported at
present. Users of earlier unsupported releases are advised to upgrade as
soon
as possible as we cannot guarantee the continued availability of security
fixes for unsupported releases.

Credits
-------
Thanks to [@mshtawy](https://hackerone.com/mshtawy?type=3Duser) for reporti=
ng
this!

--=20
Aaron Patterson
http://tenderlovemaking.com/

--000000000000142c2005c9ec2a6f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"># Possible Open Redirect in Host Authorization Middleware<=
br><br>There is a possible open redirect vulnerability in the Host Authoriz=
ation<br>middleware in Action Pack. This vulnerability has been assigned th=
e CVE<br>identifier CVE-2021-22942.<br><br>Versions Affected: =C2=A0&gt;=3D=
 6.0.0.<br>Not affected: =C2=A0 =C2=A0 =C2=A0 &lt; 6.0.0<br>Fixed Versions:=
 =C2=A0 =C2=A0 6.1.4.1, 6.0.4.1<br><br>Impact<br>------<br>Specially crafte=
d &quot;X-Forwarded-Host&quot; headers in combination with certain<br>&quot=
;allowed host&quot; formats can cause the Host Authorization middleware in =
Action<br>Pack to redirect users to a malicious website.<br><br>Impacted ap=
plications will have allowed hosts with a leading dot. For example,<br>conf=
iguration files that look like this:<br><br>```<br>config.hosts &lt;&lt; =
=C2=A0&#39;.EXAMPLE.com&#39;<br>```<br><br>When an allowed host contains a =
leading dot, a specially crafted Host header<br>can be used to redirect to =
a malicious website.<br><br>This vulnerability is similar to CVE-2021-22881=
, but CVE-2021-22881 did not<br>take in to account domain name case sensiti=
vity.<br><br>Releases<br>--------<br>The fixed releases are available at th=
e normal locations.<br><br>Workarounds<br>-----------<br>In the case a patc=
h can=E2=80=99t be applied, the following monkey patch can be used<br>in an=
 initializer:<br><br>```ruby<br>module ActionDispatch<br>=C2=A0 class HostA=
uthorization<br>=C2=A0 =C2=A0 HOSTNAME =3D /[a-z0-9.-]+|\[[a-f0-9]*:[a-f0-9=
.:]+\]/i<br>=C2=A0 =C2=A0 VALID_ORIGIN_HOST =3D /\A(#{HOSTNAME})(?::\d+)?\z=
/<br>=C2=A0 =C2=A0 VALID_FORWARDED_HOST =3D /(?:\A|,[ ]?)(#{HOSTNAME})(?::\=
d+)?\z/<br><br>=C2=A0 =C2=A0 private<br>=C2=A0 =C2=A0 =C2=A0 def authorized=
?(request)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 origin_host =3D request.get_heade=
r(&quot;HTTP_HOST&quot;)&amp;.slice(VALID_ORIGIN_HOST, 1) || &quot;&quot;<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 forwarded_host =3D request.x_forwarded_host&a=
mp;.slice(VALID_FORWARDED_HOST, 1) || &quot;&quot;<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 @permissions.allows?(origin_host) &amp;&amp; (forwarded_host.blank? =
|| @permissions.allows?(forwarded_host))<br>=C2=A0 =C2=A0 =C2=A0 end<br>=C2=
=A0 end<br>end<br>```<br><br>Patches<br>-------<br>To aid users who aren&#3=
9;t able to upgrade immediately we have provided patches for<br>the two sup=
ported release series. They are in git-am format and consist of a<br>single=
 changeset.<br><br>* 6-0-host-authorzation-open-redirect.patch - Patch for =
6.0 series<br>* 6-1-host-authorzation-open-redirect.patch - Patch for 6.1 s=
eries<br><br>Please note that only the 6.1.Z, 6.0.Z, and 5.2.Z series are s=
upported at<br>present. Users of earlier unsupported releases are advised t=
o upgrade as soon<br>as possible as we cannot guarantee the continued avail=
ability of security<br>fixes for unsupported releases.<br><br>Credits<br>--=
-----<br>Thanks to [@mshtawy](<a href=3D"https://hackerone.com/mshtawy?type=
=3Duser">https://hackerone.com/mshtawy?type=3Duser</a>) for reporting<br>th=
is!<br><div><br></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" dat=
a-smartmail=3D"gmail_signature">Aaron Patterson<br><a href=3D"http://tender=
lovemaking.com/" target=3D"_blank">http://tenderlovemaking.com/</a></div></=
div>

--000000000000142c2005c9ec2a6f--

--000000000000142c2105c9ec2a71
Content-Type: application/octet-stream; 
	name="6-1-host-authorzation-open-redirect.patch"
Content-Disposition: attachment; 
	filename="6-1-host-authorzation-open-redirect.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_ksj5ch990>
X-Attachment-Id: f_ksj5ch990

RnJvbSA1ZTk5NzNkNmUwMjBiOThhNWVjNzE1NzhhYTE4MzdlZmNmNGQ3Yjdl
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBKb25hdGhhbiBIZWZu
ZXIgPGpvbmF0aGFuQGhlZm5lci5wcm8+CkRhdGU6IEZyaSwgMTIgRmViIDIw
MjEgMTI6NTk6NTQgLTA2MDAKU3ViamVjdDogW1BBVENIXSBSZWZhY3RvciBD
VkUtMjAyMS0yMjg4MSBmaXgKCkZvbGxvdy11cCB0byA4M2E2YWMzZmVlOGZk
NTM4Y2U3ZTAwODg5MTNmZjU0ZjBmOWJjYjZmLgoKVGhpcyBhbGxvd3MgYEhU
VFBfSE9TVGAgdG8gYmUgb21pdHRlZCBhcyBiZWZvcmUsIGFuZCByZWR1Y2Vz
IHRoZSBudW1iZXIKb2Ygb2JqZWN0IGFsbG9jYXRpb25zIHBlciByZXF1ZXN0
LgoKQmVuY2htYXJrOgoKYGBgcnVieQogIyBmcm96ZW5fc3RyaW5nX2xpdGVy
YWw6IHRydWUKcmVxdWlyZSAiYmVuY2htYXJrL21lbW9yeSIKCkhPU1QgPSAi
ZXhhbXBsZS5jb206ODAiCkJFRk9SRV9SRUdFWFAgPSAvXEEoPzxob3N0Plth
LXowLTkuLV0rfFxbW2EtZjAtOV0qOlthLWYwLTkuOl0rXF0pKDpcZCspP1x6
LwpBRlRFUl9SRUdFWFAgPSAvKD86XEF8LFsgXT8pKFthLXowLTkuLV0rfFxb
W2EtZjAtOV0qOlthLWYwLTkuOl0rXF0pKD86OlxkKyk/XHovaQoKQmVuY2ht
YXJrLm1lbW9yeSBkbyB8eHwKICB4LnJlcG9ydCgiQkVGT1JFIChub24tbmls
IFgtRm9yd2FyZGVkLUhvc3QpIikgZG8KICAgIG9yaWdpbl9ob3N0ID0gQkVG
T1JFX1JFR0VYUC5tYXRjaChIT1NULnRvX3MuZG93bmNhc2UpWzpob3N0XQog
ICAgZm9yd2FyZGVkX2hvc3QgPSBCRUZPUkVfUkVHRVhQLm1hdGNoKEhPU1Qu
dG9fcy5zcGxpdCgvLFxzPy8pLmxhc3QpWzpob3N0XQogIGVuZAoKICB4LnJl
cG9ydCgiQkVGT1JFIChuaWwgWC1Gb3J3YXJkZWQtSG9zdCkiKSBkbwogICAg
b3JpZ2luX2hvc3QgPSBCRUZPUkVfUkVHRVhQLm1hdGNoKEhPU1QudG9fcy5k
b3duY2FzZSlbOmhvc3RdCiAgICBmb3J3YXJkZWRfaG9zdCA9IEJFRk9SRV9S
RUdFWFAubWF0Y2gobmlsLnRvX3Muc3BsaXQoLyxccz8vKS5sYXN0KQogIGVu
ZAoKICB4LnJlcG9ydCgiQUZURVIgKG5vbi1uaWwgWC1Gb3J3YXJkZWQtSG9z
dCkiKSBkbwogICAgb3JpZ2luX2hvc3QgPSBIT1NUJi5zbGljZShBRlRFUl9S
RUdFWFAsIDEpIHx8ICIiCiAgICBmb3J3YXJkZWRfaG9zdCA9IEhPU1QmLnNs
aWNlKEFGVEVSX1JFR0VYUCwgMSkgfHwgIiIKICBlbmQKCiAgeC5yZXBvcnQo
IkFGVEVSIChuaWwgWC1Gb3J3YXJkZWQtSG9zdCkiKSBkbwogICAgb3JpZ2lu
X2hvc3QgPSBIT1NUJi5zbGljZShBRlRFUl9SRUdFWFAsIDEpIHx8ICIiCiAg
ICBmb3J3YXJkZWRfaG9zdCA9IG5pbCYuc2xpY2UoQUZURVJfUkVHRVhQLCAx
KSB8fCAiIgogIGVuZAplbmQKYGBgCgpSZXN1bHRzOgoKYGBgCkJFRk9SRSAo
bm9uLW5pbCBYLUZvcndhcmRlZC1Ib3N0KQogICAgICAgICAgICAgICAgICAg
ICAgIDYxNi4wMDAgIG1lbXNpemUgKCAgIDIwOC4wMDAgIHJldGFpbmVkKQog
ICAgICAgICAgICAgICAgICAgICAgICAgOS4wMDAgIG9iamVjdHMgKCAgICAg
Mi4wMDAgIHJldGFpbmVkKQogICAgICAgICAgICAgICAgICAgICAgICAgMi4w
MDAgIHN0cmluZ3MgKCAgICAgMS4wMDAgIHJldGFpbmVkKQpCRUZPUkUgKG5p
bCBYLUZvcndhcmRlZC1Ib3N0KQogICAgICAgICAgICAgICAgICAgICAgIDMy
OC4wMDAgIG1lbXNpemUgKCAgICAgMC4wMDAgIHJldGFpbmVkKQogICAgICAg
ICAgICAgICAgICAgICAgICAgNS4wMDAgIG9iamVjdHMgKCAgICAgMC4wMDAg
IHJldGFpbmVkKQogICAgICAgICAgICAgICAgICAgICAgICAgMi4wMDAgIHN0
cmluZ3MgKCAgICAgMC4wMDAgIHJldGFpbmVkKQpBRlRFUiAobm9uLW5pbCBY
LUZvcndhcmRlZC1Ib3N0KQogICAgICAgICAgICAgICAgICAgICAgIDI0OC4w
MDAgIG1lbXNpemUgKCAgIDE2OC4wMDAgIHJldGFpbmVkKQogICAgICAgICAg
ICAgICAgICAgICAgICAgMy4wMDAgIG9iamVjdHMgKCAgICAgMS4wMDAgIHJl
dGFpbmVkKQogICAgICAgICAgICAgICAgICAgICAgICAgMS4wMDAgIHN0cmlu
Z3MgKCAgICAgMC4wMDAgIHJldGFpbmVkKQpBRlRFUiAobmlsIFgtRm9yd2Fy
ZGVkLUhvc3QpCiAgICAgICAgICAgICAgICAgICAgICAgIDQwLjAwMCAgbWVt
c2l6ZSAoICAgICAwLjAwMCAgcmV0YWluZWQpCiAgICAgICAgICAgICAgICAg
ICAgICAgICAxLjAwMCAgb2JqZWN0cyAoICAgICAwLjAwMCAgcmV0YWluZWQp
CiAgICAgICAgICAgICAgICAgICAgICAgICAxLjAwMCAgc3RyaW5ncyAoICAg
ICAwLjAwMCAgcmV0YWluZWQpCmBgYAoKW0NWRS0yMDIxLTIyOTQyXQotLS0K
IC4uLi9taWRkbGV3YXJlL2hvc3RfYXV0aG9yaXphdGlvbi5yYiAgICAgICAg
ICB8IDIwICsrKysrKystLS0tLS0tLS0tLS0KIC4uLi90ZXN0L2Rpc3BhdGNo
L2hvc3RfYXV0aG9yaXphdGlvbl90ZXN0LnJiICB8ICA2ICsrKy0tLQogLi4u
L2FwcGxpY2F0aW9uL21pZGRsZXdhcmUvcmVtb3RlX2lwX3Rlc3QucmIgIHwg
IDEgLQogcmFpbHRpZXMvdGVzdC9pc29sYXRpb24vYWJzdHJhY3RfdW5pdC5y
YiAgICAgIHwgIDIgKy0KIDQgZmlsZXMgY2hhbmdlZCwgMTEgaW5zZXJ0aW9u
cygrKSwgMTggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYWN0aW9ucGFj
ay9saWIvYWN0aW9uX2Rpc3BhdGNoL21pZGRsZXdhcmUvaG9zdF9hdXRob3Jp
emF0aW9uLnJiIGIvYWN0aW9ucGFjay9saWIvYWN0aW9uX2Rpc3BhdGNoL21p
ZGRsZXdhcmUvaG9zdF9hdXRob3JpemF0aW9uLnJiCmluZGV4IGUwZmU5YjMz
YTAuLjYyZjA4NjZmM2UgMTAwNjQ0Ci0tLSBhL2FjdGlvbnBhY2svbGliL2Fj
dGlvbl9kaXNwYXRjaC9taWRkbGV3YXJlL2hvc3RfYXV0aG9yaXphdGlvbi5y
YgorKysgYi9hY3Rpb25wYWNrL2xpYi9hY3Rpb25fZGlzcGF0Y2gvbWlkZGxl
d2FyZS9ob3N0X2F1dGhvcml6YXRpb24ucmIKQEAgLTEwMiwyMSArMTAyLDE1
IEBAIGRlZiBjYWxsKGVudikKICAgICBlbmQKIAogICAgIHByaXZhdGUKKyAg
ICAgIEhPU1ROQU1FID0gL1thLXowLTkuLV0rfFxbW2EtZjAtOV0qOlthLWYw
LTkuOl0rXF0vaQorICAgICAgVkFMSURfT1JJR0lOX0hPU1QgPSAvXEEoI3tI
T1NUTkFNRX0pKD86OlxkKyk/XHovCisgICAgICBWQUxJRF9GT1JXQVJERURf
SE9TVCA9IC8oPzpcQXwsWyBdPykoI3tIT1NUTkFNRX0pKD86OlxkKyk/XHov
CisKICAgICAgIGRlZiBhdXRob3JpemVkPyhyZXF1ZXN0KQotICAgICAgICB2
YWxpZF9ob3N0ID0gLwotICAgICAgICAgIFxBCi0gICAgICAgICAgKD88aG9z
dD5bYS16MC05Li1dK3xcW1thLWYwLTldKjpbYS1mMC05LjpdK1xdKQotICAg
ICAgICAgICg6XGQrKT8KLSAgICAgICAgICBcegotICAgICAgICAveAorICAg
ICAgICBvcmlnaW5faG9zdCA9IHJlcXVlc3QuZ2V0X2hlYWRlcigiSFRUUF9I
T1NUIikmLnNsaWNlKFZBTElEX09SSUdJTl9IT1NULCAxKSB8fCAiIgorICAg
ICAgICBmb3J3YXJkZWRfaG9zdCA9IHJlcXVlc3QueF9mb3J3YXJkZWRfaG9z
dCYuc2xpY2UoVkFMSURfRk9SV0FSREVEX0hPU1QsIDEpIHx8ICIiCiAKLSAg
ICAgICAgb3JpZ2luX2hvc3QgPSB2YWxpZF9ob3N0Lm1hdGNoKAotICAgICAg
ICAgIHJlcXVlc3QuZ2V0X2hlYWRlcigiSFRUUF9IT1NUIikudG9fcy5kb3du
Y2FzZSkKLSAgICAgICAgZm9yd2FyZGVkX2hvc3QgPSB2YWxpZF9ob3N0Lm1h
dGNoKAotICAgICAgICAgIHJlcXVlc3QueF9mb3J3YXJkZWRfaG9zdC50b19z
LnNwbGl0KC8sXHM/LykubGFzdCkKLQotICAgICAgICBvcmlnaW5faG9zdCAm
JiBAcGVybWlzc2lvbnMuYWxsb3dzPyhvcmlnaW5faG9zdFs6aG9zdF0pICYm
ICgKLSAgICAgICAgICBmb3J3YXJkZWRfaG9zdC5uaWw/IHx8IEBwZXJtaXNz
aW9ucy5hbGxvd3M/KGZvcndhcmRlZF9ob3N0Wzpob3N0XSkpCisgICAgICAg
IEBwZXJtaXNzaW9ucy5hbGxvd3M/KG9yaWdpbl9ob3N0KSAmJiAoZm9yd2Fy
ZGVkX2hvc3QuYmxhbms/IHx8IEBwZXJtaXNzaW9ucy5hbGxvd3M/KGZvcndh
cmRlZF9ob3N0KSkKICAgICAgIGVuZAogCiAgICAgICBkZWYgZXhjbHVkZWQ/
KHJlcXVlc3QpCmRpZmYgLS1naXQgYS9hY3Rpb25wYWNrL3Rlc3QvZGlzcGF0
Y2gvaG9zdF9hdXRob3JpemF0aW9uX3Rlc3QucmIgYi9hY3Rpb25wYWNrL3Rl
c3QvZGlzcGF0Y2gvaG9zdF9hdXRob3JpemF0aW9uX3Rlc3QucmIKaW5kZXgg
YmE1YTQ0M2I1Yi4uZDZlMzY2YmIxYSAxMDA2NDQKLS0tIGEvYWN0aW9ucGFj
ay90ZXN0L2Rpc3BhdGNoL2hvc3RfYXV0aG9yaXphdGlvbl90ZXN0LnJiCisr
KyBiL2FjdGlvbnBhY2svdGVzdC9kaXNwYXRjaC9ob3N0X2F1dGhvcml6YXRp
b25fdGVzdC5yYgpAQCAtMjIxLDE1ICsyMjEsMTUgQEAgY2xhc3MgSG9zdEF1
dGhvcml6YXRpb25UZXN0IDwgQWN0aW9uRGlzcGF0Y2g6OkludGVncmF0aW9u
VGVzdAogICAgIGFzc2VydF9tYXRjaCAiQmxvY2tlZCBob3N0OiB3d3cuZXhh
bXBsZS5jb20iLCByZXNwb25zZS5ib2R5CiAgIGVuZAogCi0gIHRlc3QgIm9u
bHkgY29tcGFyZSB0byB2YWxpZCBob3N0bmFtZXMiIGRvCisgIHRlc3QgImJs
b2NrcyByZXF1ZXN0cyB3aXRoIGludmFsaWQgaG9zdG5hbWVzIiBkbwogICAg
IEBhcHAgPSBBY3Rpb25EaXNwYXRjaDo6SG9zdEF1dGhvcml6YXRpb24ubmV3
KEFwcCwgIi5leGFtcGxlLmNvbSIpCiAKICAgICBnZXQgIi8iLCBlbnY6IHsK
LSAgICAgICJIT1NUIiA9PiAiZXhhbXBsZS5jb20jc3ViLmV4YW1wbGUuY29t
IiwKKyAgICAgICJIT1NUIiA9PiAiYXR0YWNrZXIuY29tI3guZXhhbXBsZS5j
b20iLAogICAgIH0KIAogICAgIGFzc2VydF9yZXNwb25zZSA6Zm9yYmlkZGVu
Ci0gICAgYXNzZXJ0X21hdGNoICJCbG9ja2VkIGhvc3Q6IGV4YW1wbGUuY29t
I3N1Yi5leGFtcGxlLmNvbSIsIHJlc3BvbnNlLmJvZHkKKyAgICBhc3NlcnRf
bWF0Y2ggIkJsb2NrZWQgaG9zdDogYXR0YWNrZXIuY29tI3guZXhhbXBsZS5j
b20iLCByZXNwb25zZS5ib2R5CiAgIGVuZAogCiAgIHRlc3QgImJsb2NrcyBy
ZXF1ZXN0cyB0byBzaW1pbGFyIGhvc3QiIGRvCmRpZmYgLS1naXQgYS9yYWls
dGllcy90ZXN0L2FwcGxpY2F0aW9uL21pZGRsZXdhcmUvcmVtb3RlX2lwX3Rl
c3QucmIgYi9yYWlsdGllcy90ZXN0L2FwcGxpY2F0aW9uL21pZGRsZXdhcmUv
cmVtb3RlX2lwX3Rlc3QucmIKaW5kZXggMGRjM2RjMzk3OS4uNGM2ZmExYjM3
MSAxMDA2NDQKLS0tIGEvcmFpbHRpZXMvdGVzdC9hcHBsaWNhdGlvbi9taWRk
bGV3YXJlL3JlbW90ZV9pcF90ZXN0LnJiCisrKyBiL3JhaWx0aWVzL3Rlc3Qv
YXBwbGljYXRpb24vbWlkZGxld2FyZS9yZW1vdGVfaXBfdGVzdC5yYgpAQCAt
MTEsNyArMTEsNiBAQCBjbGFzcyBSZW1vdGVJcFRlc3QgPCBBY3RpdmVTdXBw
b3J0OjpUZXN0Q2FzZQogICAgIGRlZiByZW1vdGVfaXAoZW52ID0ge30pCiAg
ICAgICByZW1vdGVfaXAgPSBuaWwKICAgICAgIGVudiA9IFJhY2s6Ok1vY2tS
ZXF1ZXN0LmVudl9mb3IoIi8iKS5tZXJnZShlbnYpLm1lcmdlISgKLSAgICAg
ICAgIkhUVFBfSE9TVCIgPT4gImV4YW1wbGUuY29tIiwKICAgICAgICAgImFj
dGlvbl9kaXNwYXRjaC5zaG93X2V4Y2VwdGlvbnMiID0+IGZhbHNlLAogICAg
ICAgICAiYWN0aW9uX2Rpc3BhdGNoLmtleV9nZW5lcmF0b3IiID0+IEFjdGl2
ZVN1cHBvcnQ6OkNhY2hpbmdLZXlHZW5lcmF0b3IubmV3KAogICAgICAgICAg
IEFjdGl2ZVN1cHBvcnQ6OktleUdlbmVyYXRvci5uZXcoImIzYzYzMWMzMTRj
MGJiY2E1MGMxYjI4NDMxNTBmZTMzIiwgaXRlcmF0aW9uczogMTAwMCkKZGlm
ZiAtLWdpdCBhL3JhaWx0aWVzL3Rlc3QvaXNvbGF0aW9uL2Fic3RyYWN0X3Vu
aXQucmIgYi9yYWlsdGllcy90ZXN0L2lzb2xhdGlvbi9hYnN0cmFjdF91bml0
LnJiCmluZGV4IDQ3ZmMzMTM1ODMuLjhhNGQzMjcyODUgMTAwNjQ0Ci0tLSBh
L3JhaWx0aWVzL3Rlc3QvaXNvbGF0aW9uL2Fic3RyYWN0X3VuaXQucmIKKysr
IGIvcmFpbHRpZXMvdGVzdC9pc29sYXRpb24vYWJzdHJhY3RfdW5pdC5yYgpA
QCAtODIsNyArODIsNyBAQCBkZWYgZXh0cmFjdF9ib2R5KHJlc3BvbnNlKQog
ICAgIGVuZAogCiAgICAgZGVmIGdldChwYXRoKQotICAgICAgQGFwcC5jYWxs
KDo6UmFjazo6TW9ja1JlcXVlc3QuZW52X2ZvcihwYXRoLCAiSFRUUF9IT1NU
IiA9PiAiZXhhbXBsZS5jb20iKSkKKyAgICAgIEBhcHAuY2FsbCg6OlJhY2s6
Ok1vY2tSZXF1ZXN0LmVudl9mb3IocGF0aCkpCiAgICAgZW5kCiAKICAgICBk
ZWYgYXNzZXJ0X3dlbGNvbWUocmVzcCkKLS0gCjIuMzAuMgoK

--000000000000142c2105c9ec2a71
Content-Type: application/octet-stream; 
	name="6-0-host-authorzation-open-redirect.patch"
Content-Disposition: attachment; 
	filename="6-0-host-authorzation-open-redirect.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_ksj5chai1>
X-Attachment-Id: f_ksj5chai1

RnJvbSA5ZmU1N2MwZmM1NTYxMDg4YTJkZjQyZTQ0Mzg5OTI1OTFlOWQ5MTdl
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBKb25hdGhhbiBIZWZu
ZXIgPGpvbmF0aGFuQGhlZm5lci5wcm8+CkRhdGU6IEZyaSwgMTIgRmViIDIw
MjEgMTI6NTk6NTQgLTA2MDAKU3ViamVjdDogW1BBVENIXSBSZWZhY3RvciBD
VkUtMjAyMS0yMjg4MSBmaXgKCkZvbGxvdy11cCB0byA4M2E2YWMzZmVlOGZk
NTM4Y2U3ZTAwODg5MTNmZjU0ZjBmOWJjYjZmLgoKVGhpcyBhbGxvd3MgYEhU
VFBfSE9TVGAgdG8gYmUgb21pdHRlZCBhcyBiZWZvcmUsIGFuZCByZWR1Y2Vz
IHRoZSBudW1iZXIKb2Ygb2JqZWN0IGFsbG9jYXRpb25zIHBlciByZXF1ZXN0
LgoKQmVuY2htYXJrOgoKYGBgcnVieQogIyBmcm96ZW5fc3RyaW5nX2xpdGVy
YWw6IHRydWUKcmVxdWlyZSAiYmVuY2htYXJrL21lbW9yeSIKCkhPU1QgPSAi
ZXhhbXBsZS5jb206ODAiCkJFRk9SRV9SRUdFWFAgPSAvXEEoPzxob3N0Plth
LXowLTkuLV0rfFxbW2EtZjAtOV0qOlthLWYwLTkuOl0rXF0pKDpcZCspP1x6
LwpBRlRFUl9SRUdFWFAgPSAvKD86XEF8LFsgXT8pKFthLXowLTkuLV0rfFxb
W2EtZjAtOV0qOlthLWYwLTkuOl0rXF0pKD86OlxkKyk/XHovaQoKQmVuY2ht
YXJrLm1lbW9yeSBkbyB8eHwKICB4LnJlcG9ydCgiQkVGT1JFIChub24tbmls
IFgtRm9yd2FyZGVkLUhvc3QpIikgZG8KICAgIG9yaWdpbl9ob3N0ID0gQkVG
T1JFX1JFR0VYUC5tYXRjaChIT1NULnRvX3MuZG93bmNhc2UpWzpob3N0XQog
ICAgZm9yd2FyZGVkX2hvc3QgPSBCRUZPUkVfUkVHRVhQLm1hdGNoKEhPU1Qu
dG9fcy5zcGxpdCgvLFxzPy8pLmxhc3QpWzpob3N0XQogIGVuZAoKICB4LnJl
cG9ydCgiQkVGT1JFIChuaWwgWC1Gb3J3YXJkZWQtSG9zdCkiKSBkbwogICAg
b3JpZ2luX2hvc3QgPSBCRUZPUkVfUkVHRVhQLm1hdGNoKEhPU1QudG9fcy5k
b3duY2FzZSlbOmhvc3RdCiAgICBmb3J3YXJkZWRfaG9zdCA9IEJFRk9SRV9S
RUdFWFAubWF0Y2gobmlsLnRvX3Muc3BsaXQoLyxccz8vKS5sYXN0KQogIGVu
ZAoKICB4LnJlcG9ydCgiQUZURVIgKG5vbi1uaWwgWC1Gb3J3YXJkZWQtSG9z
dCkiKSBkbwogICAgb3JpZ2luX2hvc3QgPSBIT1NUJi5zbGljZShBRlRFUl9S
RUdFWFAsIDEpIHx8ICIiCiAgICBmb3J3YXJkZWRfaG9zdCA9IEhPU1QmLnNs
aWNlKEFGVEVSX1JFR0VYUCwgMSkgfHwgIiIKICBlbmQKCiAgeC5yZXBvcnQo
IkFGVEVSIChuaWwgWC1Gb3J3YXJkZWQtSG9zdCkiKSBkbwogICAgb3JpZ2lu
X2hvc3QgPSBIT1NUJi5zbGljZShBRlRFUl9SRUdFWFAsIDEpIHx8ICIiCiAg
ICBmb3J3YXJkZWRfaG9zdCA9IG5pbCYuc2xpY2UoQUZURVJfUkVHRVhQLCAx
KSB8fCAiIgogIGVuZAplbmQKYGBgCgpSZXN1bHRzOgoKYGBgCkJFRk9SRSAo
bm9uLW5pbCBYLUZvcndhcmRlZC1Ib3N0KQogICAgICAgICAgICAgICAgICAg
ICAgIDYxNi4wMDAgIG1lbXNpemUgKCAgIDIwOC4wMDAgIHJldGFpbmVkKQog
ICAgICAgICAgICAgICAgICAgICAgICAgOS4wMDAgIG9iamVjdHMgKCAgICAg
Mi4wMDAgIHJldGFpbmVkKQogICAgICAgICAgICAgICAgICAgICAgICAgMi4w
MDAgIHN0cmluZ3MgKCAgICAgMS4wMDAgIHJldGFpbmVkKQpCRUZPUkUgKG5p
bCBYLUZvcndhcmRlZC1Ib3N0KQogICAgICAgICAgICAgICAgICAgICAgIDMy
OC4wMDAgIG1lbXNpemUgKCAgICAgMC4wMDAgIHJldGFpbmVkKQogICAgICAg
ICAgICAgICAgICAgICAgICAgNS4wMDAgIG9iamVjdHMgKCAgICAgMC4wMDAg
IHJldGFpbmVkKQogICAgICAgICAgICAgICAgICAgICAgICAgMi4wMDAgIHN0
cmluZ3MgKCAgICAgMC4wMDAgIHJldGFpbmVkKQpBRlRFUiAobm9uLW5pbCBY
LUZvcndhcmRlZC1Ib3N0KQogICAgICAgICAgICAgICAgICAgICAgIDI0OC4w
MDAgIG1lbXNpemUgKCAgIDE2OC4wMDAgIHJldGFpbmVkKQogICAgICAgICAg
ICAgICAgICAgICAgICAgMy4wMDAgIG9iamVjdHMgKCAgICAgMS4wMDAgIHJl
dGFpbmVkKQogICAgICAgICAgICAgICAgICAgICAgICAgMS4wMDAgIHN0cmlu
Z3MgKCAgICAgMC4wMDAgIHJldGFpbmVkKQpBRlRFUiAobmlsIFgtRm9yd2Fy
ZGVkLUhvc3QpCiAgICAgICAgICAgICAgICAgICAgICAgIDQwLjAwMCAgbWVt
c2l6ZSAoICAgICAwLjAwMCAgcmV0YWluZWQpCiAgICAgICAgICAgICAgICAg
ICAgICAgICAxLjAwMCAgb2JqZWN0cyAoICAgICAwLjAwMCAgcmV0YWluZWQp
CiAgICAgICAgICAgICAgICAgICAgICAgICAxLjAwMCAgc3RyaW5ncyAoICAg
ICAwLjAwMCAgcmV0YWluZWQpCmBgYAoKW0NWRS0yMDIxLTIyOTQyXQotLS0K
IC4uLi9taWRkbGV3YXJlL2hvc3RfYXV0aG9yaXphdGlvbi5yYiAgICAgICAg
ICB8IDIwICsrKysrKystLS0tLS0tLS0tLS0KIC4uLi90ZXN0L2Rpc3BhdGNo
L2hvc3RfYXV0aG9yaXphdGlvbl90ZXN0LnJiICB8ICA0ICsrLS0KIC4uLi9h
cHBsaWNhdGlvbi9taWRkbGV3YXJlL3JlbW90ZV9pcF90ZXN0LnJiICB8ICAx
IC0KIHJhaWx0aWVzL3Rlc3QvaXNvbGF0aW9uL2Fic3RyYWN0X3VuaXQucmIg
ICAgICB8ICAyICstCiA0IGZpbGVzIGNoYW5nZWQsIDEwIGluc2VydGlvbnMo
KyksIDE3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2FjdGlvbnBhY2sv
bGliL2FjdGlvbl9kaXNwYXRjaC9taWRkbGV3YXJlL2hvc3RfYXV0aG9yaXph
dGlvbi5yYiBiL2FjdGlvbnBhY2svbGliL2FjdGlvbl9kaXNwYXRjaC9taWRk
bGV3YXJlL2hvc3RfYXV0aG9yaXphdGlvbi5yYgppbmRleCBhZDIwOWMyNjY5
Li44ZTM5YWVlODdkIDEwMDY0NAotLS0gYS9hY3Rpb25wYWNrL2xpYi9hY3Rp
b25fZGlzcGF0Y2gvbWlkZGxld2FyZS9ob3N0X2F1dGhvcml6YXRpb24ucmIK
KysrIGIvYWN0aW9ucGFjay9saWIvYWN0aW9uX2Rpc3BhdGNoL21pZGRsZXdh
cmUvaG9zdF9hdXRob3JpemF0aW9uLnJiCkBAIC04NiwyMSArODYsMTUgQEAg
ZGVmIGNhbGwoZW52KQogICAgIGVuZAogCiAgICAgcHJpdmF0ZQorICAgICAg
SE9TVE5BTUUgPSAvW2EtejAtOS4tXSt8XFtbYS1mMC05XSo6W2EtZjAtOS46
XStcXS9pCisgICAgICBWQUxJRF9PUklHSU5fSE9TVCA9IC9cQSgje0hPU1RO
QU1FfSkoPzo6XGQrKT9cei8KKyAgICAgIFZBTElEX0ZPUldBUkRFRF9IT1NU
ID0gLyg/OlxBfCxbIF0/KSgje0hPU1ROQU1FfSkoPzo6XGQrKT9cei8KKwog
ICAgICAgZGVmIGF1dGhvcml6ZWQ/KHJlcXVlc3QpCi0gICAgICAgIHZhbGlk
X2hvc3QgPSAvCi0gICAgICAgICAgXEEKLSAgICAgICAgICAoPzxob3N0Plth
LXowLTkuLV0rfFxbW2EtZjAtOV0qOlthLWYwLTkuOl0rXF0pCi0gICAgICAg
ICAgKDpcZCspPwotICAgICAgICAgIFx6Ci0gICAgICAgIC94CisgICAgICAg
IG9yaWdpbl9ob3N0ID0gcmVxdWVzdC5nZXRfaGVhZGVyKCJIVFRQX0hPU1Qi
KSYuc2xpY2UoVkFMSURfT1JJR0lOX0hPU1QsIDEpIHx8ICIiCisgICAgICAg
IGZvcndhcmRlZF9ob3N0ID0gcmVxdWVzdC54X2ZvcndhcmRlZF9ob3N0Ji5z
bGljZShWQUxJRF9GT1JXQVJERURfSE9TVCwgMSkgfHwgIiIKIAotICAgICAg
ICBvcmlnaW5faG9zdCA9IHZhbGlkX2hvc3QubWF0Y2goCi0gICAgICAgICAg
cmVxdWVzdC5nZXRfaGVhZGVyKCJIVFRQX0hPU1QiKS50b19zLmRvd25jYXNl
KQotICAgICAgICBmb3J3YXJkZWRfaG9zdCA9IHZhbGlkX2hvc3QubWF0Y2go
Ci0gICAgICAgICAgcmVxdWVzdC54X2ZvcndhcmRlZF9ob3N0LnRvX3Muc3Bs
aXQoLyxccz8vKS5sYXN0KQotCi0gICAgICAgIG9yaWdpbl9ob3N0ICYmIEBw
ZXJtaXNzaW9ucy5hbGxvd3M/KG9yaWdpbl9ob3N0Wzpob3N0XSkgJiYgKAot
ICAgICAgICAgIGZvcndhcmRlZF9ob3N0Lm5pbD8gfHwgQHBlcm1pc3Npb25z
LmFsbG93cz8oZm9yd2FyZGVkX2hvc3RbOmhvc3RdKSkKKyAgICAgICAgQHBl
cm1pc3Npb25zLmFsbG93cz8ob3JpZ2luX2hvc3QpICYmIChmb3J3YXJkZWRf
aG9zdC5ibGFuaz8gfHwgQHBlcm1pc3Npb25zLmFsbG93cz8oZm9yd2FyZGVk
X2hvc3QpKQogICAgICAgZW5kCiAKICAgICAgIGRlZiBtYXJrX2FzX2F1dGhv
cml6ZWQocmVxdWVzdCkKZGlmZiAtLWdpdCBhL2FjdGlvbnBhY2svdGVzdC9k
aXNwYXRjaC9ob3N0X2F1dGhvcml6YXRpb25fdGVzdC5yYiBiL2FjdGlvbnBh
Y2svdGVzdC9kaXNwYXRjaC9ob3N0X2F1dGhvcml6YXRpb25fdGVzdC5yYgpp
bmRleCA0YTM5NzQ3ZjhkLi42MzU2MmM5MDQ2IDEwMDY0NAotLS0gYS9hY3Rp
b25wYWNrL3Rlc3QvZGlzcGF0Y2gvaG9zdF9hdXRob3JpemF0aW9uX3Rlc3Qu
cmIKKysrIGIvYWN0aW9ucGFjay90ZXN0L2Rpc3BhdGNoL2hvc3RfYXV0aG9y
aXphdGlvbl90ZXN0LnJiCkBAIC0yMDcsMTEgKzIwNywxMSBAQCBjbGFzcyBI
b3N0QXV0aG9yaXphdGlvblRlc3QgPCBBY3Rpb25EaXNwYXRjaDo6SW50ZWdy
YXRpb25UZXN0CiAgICAgQGFwcCA9IEFjdGlvbkRpc3BhdGNoOjpIb3N0QXV0
aG9yaXphdGlvbi5uZXcoQXBwLCAiLmV4YW1wbGUuY29tIikKIAogICAgIGdl
dCAiLyIsIGVudjogewotICAgICAgIkhPU1QiID0+ICJleGFtcGxlLmNvbSNz
dWIuZXhhbXBsZS5jb20iLAorICAgICAgIkhPU1QiID0+ICJhdHRhY2tlci5j
b20jeC5leGFtcGxlLmNvbSIsCiAgICAgfQogCiAgICAgYXNzZXJ0X3Jlc3Bv
bnNlIDpmb3JiaWRkZW4KLSAgICBhc3NlcnRfbWF0Y2ggIkJsb2NrZWQgaG9z
dDogZXhhbXBsZS5jb20jc3ViLmV4YW1wbGUuY29tIiwgcmVzcG9uc2UuYm9k
eQorICAgIGFzc2VydF9tYXRjaCAiQmxvY2tlZCBob3N0OiBhdHRhY2tlci5j
b20jeC5leGFtcGxlLmNvbSIsIHJlc3BvbnNlLmJvZHkKICAgZW5kCiAKICAg
dGVzdCAiYmxvY2tzIHJlcXVlc3RzIHRvIHNpbWlsYXIgaG9zdCIgZG8KZGlm
ZiAtLWdpdCBhL3JhaWx0aWVzL3Rlc3QvYXBwbGljYXRpb24vbWlkZGxld2Fy
ZS9yZW1vdGVfaXBfdGVzdC5yYiBiL3JhaWx0aWVzL3Rlc3QvYXBwbGljYXRp
b24vbWlkZGxld2FyZS9yZW1vdGVfaXBfdGVzdC5yYgppbmRleCAwZGMzZGMz
OTc5Li40YzZmYTFiMzcxIDEwMDY0NAotLS0gYS9yYWlsdGllcy90ZXN0L2Fw
cGxpY2F0aW9uL21pZGRsZXdhcmUvcmVtb3RlX2lwX3Rlc3QucmIKKysrIGIv
cmFpbHRpZXMvdGVzdC9hcHBsaWNhdGlvbi9taWRkbGV3YXJlL3JlbW90ZV9p
cF90ZXN0LnJiCkBAIC0xMSw3ICsxMSw2IEBAIGNsYXNzIFJlbW90ZUlwVGVz
dCA8IEFjdGl2ZVN1cHBvcnQ6OlRlc3RDYXNlCiAgICAgZGVmIHJlbW90ZV9p
cChlbnYgPSB7fSkKICAgICAgIHJlbW90ZV9pcCA9IG5pbAogICAgICAgZW52
ID0gUmFjazo6TW9ja1JlcXVlc3QuZW52X2ZvcigiLyIpLm1lcmdlKGVudiku
bWVyZ2UhKAotICAgICAgICAiSFRUUF9IT1NUIiA9PiAiZXhhbXBsZS5jb20i
LAogICAgICAgICAiYWN0aW9uX2Rpc3BhdGNoLnNob3dfZXhjZXB0aW9ucyIg
PT4gZmFsc2UsCiAgICAgICAgICJhY3Rpb25fZGlzcGF0Y2gua2V5X2dlbmVy
YXRvciIgPT4gQWN0aXZlU3VwcG9ydDo6Q2FjaGluZ0tleUdlbmVyYXRvci5u
ZXcoCiAgICAgICAgICAgQWN0aXZlU3VwcG9ydDo6S2V5R2VuZXJhdG9yLm5l
dygiYjNjNjMxYzMxNGMwYmJjYTUwYzFiMjg0MzE1MGZlMzMiLCBpdGVyYXRp
b25zOiAxMDAwKQpkaWZmIC0tZ2l0IGEvcmFpbHRpZXMvdGVzdC9pc29sYXRp
b24vYWJzdHJhY3RfdW5pdC5yYiBiL3JhaWx0aWVzL3Rlc3QvaXNvbGF0aW9u
L2Fic3RyYWN0X3VuaXQucmIKaW5kZXggMWQxMDIzODY4My4uNTg0ZDMwNzY5
MCAxMDA2NDQKLS0tIGEvcmFpbHRpZXMvdGVzdC9pc29sYXRpb24vYWJzdHJh
Y3RfdW5pdC5yYgorKysgYi9yYWlsdGllcy90ZXN0L2lzb2xhdGlvbi9hYnN0
cmFjdF91bml0LnJiCkBAIC04Miw3ICs4Miw3IEBAIGRlZiBleHRyYWN0X2Jv
ZHkocmVzcG9uc2UpCiAgICAgZW5kCiAKICAgICBkZWYgZ2V0KHBhdGgpCi0g
ICAgICBAYXBwLmNhbGwoOjpSYWNrOjpNb2NrUmVxdWVzdC5lbnZfZm9yKHBh
dGgsICJIVFRQX0hPU1QiID0+ICJleGFtcGxlLmNvbSIpKQorICAgICAgQGFw
cC5jYWxsKDo6UmFjazo6TW9ja1JlcXVlc3QuZW52X2ZvcihwYXRoKSkKICAg
ICBlbmQKIAogICAgIGRlZiBhc3NlcnRfd2VsY29tZShyZXNwKQotLSAKMi4z
MC4yCgo=

--000000000000142c2105c9ec2a71--
