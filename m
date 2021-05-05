X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["14730" "Wednesday" "5" "May" "2021" "09:40:31" "-0700" "Aaron Patterson" "aaron.patterson@gmail.com" nil "302" "[oss-security] [CVE-2021-22904] Possible DoS Vulnerability in Action Controller Token Authentication" nil nil nil "5" nil nil (number mark "U       aaron.patter May  5  302/14730 " thread-indent "\"[oss-security] [CVE-2021-22904] Possible DoS Vulnerability in Action Controller Token Authentication\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2021-22904] Possible DoS Vulnerability in Action Controller Token Authentication" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9413 invoked by uid 550); 5 May 2021 16:43:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7234 invoked from network); 5 May 2021 16:40:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=JwcAJ+SDcK1D9o1dEZ74cJv/wgvSrZNHVOILSVFS4ss=;
        b=EjWEEQ+Io7cDLcUsJugIKoaG+LfQl65fWfETDew7AiGjwIqKLXScI67oPrPsVCp7jI
         5jvkPcKxzdTrUDrM1XCm4KHoiAJJwV46cY3+MNDphhUbRd4oIc5FPoco5B8PJPrYTPmB
         xeODSr1zXvBG7evt6/zHTBIxS5dkyzabEswMq3GsymrcJPtGPbnyPtv2kNP3eauW9hCJ
         slEU9mypkw1cmPeP8DRWIeDvfCtEBz6YpdoViygjwBi8cIrJPCWVsa0Tvm6t9O6vzHZO
         g1V84jg9xkuD1Fxi3yyrzCKrZOHHEmCC5EIZnZx/X5JIhDn9S81oQEgkdHeeHGaQynj4
         HfzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=JwcAJ+SDcK1D9o1dEZ74cJv/wgvSrZNHVOILSVFS4ss=;
        b=du414I9n4n50EQLwTkqrnx11FkXjDasEjGH1Ildv6moirvJZtvHaoUJK//OEGitmZY
         DGE9BzYKSi73BXo2HrzmLgQUtUZ/1bs6rkclmVPGqSkloZc8sA6Hp0ShAsyOlsRHgJ2G
         1rZR1NCTWiltTsFkaF59rdk21h/2E+/L+zc9M4XGYadbbjBL7ULS+pqpiTtdAbU4R6VJ
         FAGanEuoIJolcH7lUdLvspmZ9R3P9yafnOHln39XcnaSWyrx7nB1EkaCAcS6q4Y2ebgT
         w5+n7A9q8yW5M8rASYclWR43IUcI638XQe5MvHJJje9mxCdKxiRkNS9d9oaQvuoVWcTl
         9nnw==
X-Gm-Message-State: AOAM5337j98Q5Z1NfiswycbjpuQC3ISTgrSrcEb1n7TrUzY7XVopBiav
	jO4eFrVzjkqhCMYlqyGiaWBvtY29+64aKjugm0A=
X-Google-Smtp-Source: ABdhPJy4tHX0TRs+fjT3K00G1JaQ9sSxexF59PQDt1k4/tyuCn+6jgRt8czFvoIUHnrgPKeRQ7EbeQBUWkl5PGwvCdk=
X-Received: by 2002:a17:906:2c4c:: with SMTP id f12mr2645672ejh.3.1620232842423;
 Wed, 05 May 2021 09:40:42 -0700 (PDT)
MIME-Version: 1.0
From: Aaron Patterson <aaron.patterson@gmail.com>
Date: Wed, 5 May 2021 09:40:31 -0700
Message-ID: <CALBaBG-wC+E2CToPvR5u_4Oz4J-CURY_2i8qUDt7vYd_wfgw0Q@mail.gmail.com>
To: ruby-security-ann@googlegroups.com, rubyonrails-security@googlegroups.com, 
	oss-security@lists.openwall.com
Content-Type: multipart/mixed; boundary="00000000000006f19d05c197db47"
Subject: [oss-security] [CVE-2021-22904] Possible DoS Vulnerability in Action Controller
 Token Authentication

--00000000000006f19d05c197db47
Content-Type: multipart/alternative; boundary="00000000000006f19b05c197db45"

--00000000000006f19b05c197db45
Content-Type: text/plain; charset="UTF-8"

There is a possible DoS vulnerability in the Token Authentication logic in
Action Controller.  This vulnerability has been assigned the CVE identifier
CVE-2021-22904.

Versions Affected:  >= 4.0.0
Not affected:       < 4.0.0
Fixed Versions:     6.1.3.2, 6.0.3.7, 5.2.4.6, 5.2.6

Impact
------
Impacted code uses `authenticate_or_request_with_http_token` or
`authenticate_with_http_token` for request authentication.  Impacted code
will
look something like this:

```
class PostsController < ApplicationController
  before_action :authenticate

  private

  def authenticate
    authenticate_or_request_with_http_token do |token, options|
      # ...
    end
  end
end
```

All users running an affected release should either upgrade or use one of
the
workarounds immediately.

Releases
--------
The fixed releases are available at the normal locations.

Workarounds
-----------
The following monkey patch placed in an initializer can be used to work
around
the issue:

```ruby
module ActionController::HttpAuthentication::Token
  AUTHN_PAIR_DELIMITERS = /(?:,|;|\t)/
end
```

Patches
-------
To aid users who aren't able to upgrade immediately we have provided
patches for
the two supported release series. They are in git-am format and consist of a
single changeset.

* 5-2-http-authentication-dos.patch - Patch for 5.2 series
* 6-0-http-authentication-dos.patch - Patch for 6.0 series
* 6-1-http-authentication-dos.patch - Patch for 6.1 series

Please note that only the 6.1.Z, 6.0.Z, and 5.2.Z series are supported at
present. Users of earlier unsupported releases are advised to upgrade as
soon
as possible as we cannot guarantee the continued availability of security
fixes for unsupported releases.

Credits
-------
Thank you to https://hackerone.com/wonda_tea_coffee for reporting this
issue!

-- 
Aaron Patterson
http://tenderlovemaking.com/

--00000000000006f19b05c197db45
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>There is a possible DoS vulnerabilit=
y in the Token Authentication logic in</div><div>Action Controller.=C2=A0 T=
his vulnerability has been assigned the CVE identifier</div><div>CVE-2021-2=
2904.</div><div><br></div><div>Versions Affected: =C2=A0&gt;=3D 4.0.0</div>=
<div>Not affected: =C2=A0 =C2=A0 =C2=A0 &lt; 4.0.0</div><div>Fixed Versions=
: =C2=A0 =C2=A0 6.1.3.2, 6.0.3.7, 5.2.4.6, 5.2.6</div><div><br></div><div>I=
mpact</div><div>------</div><div>Impacted code uses `authenticate_or_reques=
t_with_http_token` or</div><div>`authenticate_with_http_token` for request =
authentication.=C2=A0 Impacted code will</div><div>look something like this=
:</div><div><br></div><div>```</div><div>class PostsController &lt; Applica=
tionController</div><div>=C2=A0 before_action :authenticate</div><div><br><=
/div><div>=C2=A0 private</div><div><br></div><div>=C2=A0 def authenticate</=
div><div>=C2=A0 =C2=A0 authenticate_or_request_with_http_token do |token, o=
ptions|</div><div>=C2=A0 =C2=A0 =C2=A0 # ...</div><div>=C2=A0 =C2=A0 end</d=
iv><div>=C2=A0 end</div><div>end</div><div>```</div><div><br></div><div>All=
 users running an affected release should either upgrade or use one of the<=
/div><div>workarounds immediately.</div><div><br></div><div>Releases</div><=
div>--------</div><div>The fixed releases are available at the normal locat=
ions.</div><div><br></div><div>Workarounds</div><div>-----------</div><div>=
The following monkey patch placed in an initializer can be used to work aro=
und</div><div>the issue:</div><div><br></div><div>```ruby</div><div>module =
ActionController::HttpAuthentication::Token</div><div>=C2=A0 AUTHN_PAIR_DEL=
IMITERS =3D /(?:,|;|\t)/</div><div>end</div><div>```</div><div><br></div><d=
iv>Patches</div><div>-------</div><div>To aid users who aren&#39;t able to =
upgrade immediately we have provided patches for</div><div>the two supporte=
d release series. They are in git-am format and consist of a</div><div>sing=
le changeset.</div><div><br></div><div>* 5-2-http-authentication-dos.patch =
- Patch for 5.2 series</div><div>* 6-0-http-authentication-dos.patch - Patc=
h for 6.0 series</div><div>* 6-1-http-authentication-dos.patch - Patch for =
6.1 series</div><div><br></div><div>Please note that only the 6.1.Z, 6.0.Z,=
 and 5.2.Z series are supported at</div><div>present. Users of earlier unsu=
pported releases are advised to upgrade as soon</div><div>as possible as we=
 cannot guarantee the continued availability of security</div><div>fixes fo=
r unsupported releases.</div><div><br></div><div>Credits</div><div>-------<=
/div><div>Thank you to <a href=3D"https://hackerone.com/wonda_tea_coffee">h=
ttps://hackerone.com/wonda_tea_coffee</a> for reporting this issue!</div><d=
iv><br></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature">Aaron Patter=
son<br><a href=3D"http://tenderlovemaking.com/" target=3D"_blank">http://te=
nderlovemaking.com/</a></div></div></div>

--00000000000006f19b05c197db45--

--00000000000006f19d05c197db47
Content-Type: application/octet-stream; 
	name="6-1-http-authentication-dos.patch"
Content-Disposition: attachment; 
	filename="6-1-http-authentication-dos.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_kobosgev0>
X-Attachment-Id: f_kobosgev0

RnJvbSAyMGE0ZTYwODE0YTQ1YTI4N2Q1MDIyMjZiM2JkZWVkZjlhZDJjNzM1
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBBYXJvbiBQYXR0ZXJz
b24gPGFhcm9uQHJ1YnlvbnJhaWxzLm9yZz4KRGF0ZTogVHVlLCA0IE1heSAy
MDIxIDE1OjQ5OjIxIC0wNzAwClN1YmplY3Q6IFtQQVRDSF0gUHJldmVudCBz
bG93IHJlZ2V4IHdoZW4gcGFyc2luZyBob3N0IGF1dGhvcml6YXRpb24gaGVh
ZGVyCgpUaGUgb2xkIHJlZ2V4IGNvdWxkIHRha2UgdG9vIGxvbmcgd2hlbiBw
YXJzaW5nIGFuIGF1dGhvcml6YXRpb24gaGVhZGVyLAphbmQgdGhpcyBjb3Vs
ZCBwb3RlbnRpYWxseSBjYXVzZSBhIERvUyB2dWxuZXJhYmlsaXR5CgpbQ1ZF
LTIwMjEtMjI5MDRdCi0tLQogLi4uL2xpYi9hY3Rpb25fY29udHJvbGxlci9t
ZXRhbC9odHRwX2F1dGhlbnRpY2F0aW9uLnJiIHwgIDIgKy0KIC4uLi90ZXN0
L2NvbnRyb2xsZXIvaHR0cF90b2tlbl9hdXRoZW50aWNhdGlvbl90ZXN0LnJi
ICB8IDEwICsrKysrKysrKysKIDIgZmlsZXMgY2hhbmdlZCwgMTEgaW5zZXJ0
aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2FjdGlvbnBh
Y2svbGliL2FjdGlvbl9jb250cm9sbGVyL21ldGFsL2h0dHBfYXV0aGVudGlj
YXRpb24ucmIgYi9hY3Rpb25wYWNrL2xpYi9hY3Rpb25fY29udHJvbGxlci9t
ZXRhbC9odHRwX2F1dGhlbnRpY2F0aW9uLnJiCmluZGV4IDBiZjVjYzJlNTAu
LmQ5MjJlYTM0ZTIgMTAwNjQ0Ci0tLSBhL2FjdGlvbnBhY2svbGliL2FjdGlv
bl9jb250cm9sbGVyL21ldGFsL2h0dHBfYXV0aGVudGljYXRpb24ucmIKKysr
IGIvYWN0aW9ucGFjay9saWIvYWN0aW9uX2NvbnRyb2xsZXIvbWV0YWwvaHR0
cF9hdXRoZW50aWNhdGlvbi5yYgpAQCAtNDA3LDcgKzQwNyw3IEBAIGRlZiBv
cGFxdWUoc2VjcmV0X2tleSkKICAgICBtb2R1bGUgVG9rZW4KICAgICAgIFRP
S0VOX0tFWSA9ICJ0b2tlbj0iCiAgICAgICBUT0tFTl9SRUdFWCA9IC9eKFRv
a2VufEJlYXJlcilccysvCi0gICAgICBBVVRITl9QQUlSX0RFTElNSVRFUlMg
PSAvKD86LHw7fFx0KykvCisgICAgICBBVVRITl9QQUlSX0RFTElNSVRFUlMg
PSAvKD86LHw7fFx0KS8KICAgICAgIGV4dGVuZCBzZWxmCiAKICAgICAgIG1v
ZHVsZSBDb250cm9sbGVyTWV0aG9kcwpkaWZmIC0tZ2l0IGEvYWN0aW9ucGFj
ay90ZXN0L2NvbnRyb2xsZXIvaHR0cF90b2tlbl9hdXRoZW50aWNhdGlvbl90
ZXN0LnJiIGIvYWN0aW9ucGFjay90ZXN0L2NvbnRyb2xsZXIvaHR0cF90b2tl
bl9hdXRoZW50aWNhdGlvbl90ZXN0LnJiCmluZGV4IDU5NDA4NTgxOTcuLmNh
NjllYjEzODkgMTAwNjQ0Ci0tLSBhL2FjdGlvbnBhY2svdGVzdC9jb250cm9s
bGVyL2h0dHBfdG9rZW5fYXV0aGVudGljYXRpb25fdGVzdC5yYgorKysgYi9h
Y3Rpb25wYWNrL3Rlc3QvY29udHJvbGxlci9odHRwX3Rva2VuX2F1dGhlbnRp
Y2F0aW9uX3Rlc3QucmIKQEAgLTg4LDYgKzg4LDE2IEBAIGRlZiBhdXRoZW50
aWNhdGVfbG9uZ19jcmVkZW50aWFscwogICAgIGFzc2VydF9lcXVhbCAiSFRU
UCBUb2tlbjogQWNjZXNzIGRlbmllZC5cbiIsIEByZXNwb25zZS5ib2R5LCAi
QXV0aGVudGljYXRpb24gaGVhZGVyIHdhcyBub3QgcHJvcGVybHkgcGFyc2Vk
IgogICBlbmQKIAorICB0ZXN0ICJhdXRoZW50aWNhdGlvbiByZXF1ZXN0IHdp
dGggZXZpbCBoZWFkZXIiIGRvCisgICAgQHJlcXVlc3QuZW52WyJIVFRQX0FV
VEhPUklaQVRJT04iXSA9ICJUb2tlbiAuIiArICIgIiAqICgxMDI0KjgwLTgp
ICsgIi4iCisgICAgVGltZW91dC50aW1lb3V0KDEpIGRvCisgICAgICBnZXQg
OmluZGV4CisgICAgZW5kCisKKyAgICBhc3NlcnRfcmVzcG9uc2UgOnVuYXV0
aG9yaXplZAorICAgIGFzc2VydF9lcXVhbCAiSFRUUCBUb2tlbjogQWNjZXNz
IGRlbmllZC5cbiIsIEByZXNwb25zZS5ib2R5LCAiQXV0aGVudGljYXRpb24g
aGVhZGVyIHdhcyBub3QgcHJvcGVybHkgcGFyc2VkIgorICBlbmQKKwogICB0
ZXN0ICJzdWNjZXNzZnVsIGF1dGhlbnRpY2F0aW9uIHJlcXVlc3Qgd2l0aCBC
ZWFyZXIgaW5zdGVhZCBvZiBUb2tlbiIgZG8KICAgICBAcmVxdWVzdC5lbnZb
IkhUVFBfQVVUSE9SSVpBVElPTiJdID0gIkJlYXJlciBsaWZvIgogICAgIGdl
dCA6aW5kZXgKLS0gCjIuMzAuMAoK

--00000000000006f19d05c197db47
Content-Type: application/octet-stream; 
	name="6-0-http-authentication-dos.patch"
Content-Disposition: attachment; 
	filename="6-0-http-authentication-dos.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_kobosgfj1>
X-Attachment-Id: f_kobosgfj1

RnJvbSBkODYxZmE4YWRlMzUzMzkwYzQ0MTliNTNhNmM2YjQxZjMwMDViMWYy
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBBYXJvbiBQYXR0ZXJz
b24gPGFhcm9uQHJ1YnlvbnJhaWxzLm9yZz4KRGF0ZTogVHVlLCA0IE1heSAy
MDIxIDE1OjQ5OjIxIC0wNzAwClN1YmplY3Q6IFtQQVRDSF0gUHJldmVudCBz
bG93IHJlZ2V4IHdoZW4gcGFyc2luZyBob3N0IGF1dGhvcml6YXRpb24gaGVh
ZGVyCgpUaGUgb2xkIHJlZ2V4IGNvdWxkIHRha2UgdG9vIGxvbmcgd2hlbiBw
YXJzaW5nIGFuIGF1dGhvcml6YXRpb24gaGVhZGVyLAphbmQgdGhpcyBjb3Vs
ZCBwb3RlbnRpYWxseSBjYXVzZSBhIERvUyB2dWxuZXJhYmlsaXR5CgpbQ1ZF
LTIwMjEtMjI5MDRdCi0tLQogLi4uL2xpYi9hY3Rpb25fY29udHJvbGxlci9t
ZXRhbC9odHRwX2F1dGhlbnRpY2F0aW9uLnJiIHwgIDIgKy0KIC4uLi90ZXN0
L2NvbnRyb2xsZXIvaHR0cF90b2tlbl9hdXRoZW50aWNhdGlvbl90ZXN0LnJi
ICB8IDEwICsrKysrKysrKysKIDIgZmlsZXMgY2hhbmdlZCwgMTEgaW5zZXJ0
aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2FjdGlvbnBh
Y2svbGliL2FjdGlvbl9jb250cm9sbGVyL21ldGFsL2h0dHBfYXV0aGVudGlj
YXRpb24ucmIgYi9hY3Rpb25wYWNrL2xpYi9hY3Rpb25fY29udHJvbGxlci9t
ZXRhbC9odHRwX2F1dGhlbnRpY2F0aW9uLnJiCmluZGV4IDZhMjc0ZDM1Y2Iu
Ljk3Y2FmYmU0NmYgMTAwNjQ0Ci0tLSBhL2FjdGlvbnBhY2svbGliL2FjdGlv
bl9jb250cm9sbGVyL21ldGFsL2h0dHBfYXV0aGVudGljYXRpb24ucmIKKysr
IGIvYWN0aW9ucGFjay9saWIvYWN0aW9uX2NvbnRyb2xsZXIvbWV0YWwvaHR0
cF9hdXRoZW50aWNhdGlvbi5yYgpAQCAtNDA1LDcgKzQwNSw3IEBAIGRlZiBv
cGFxdWUoc2VjcmV0X2tleSkKICAgICBtb2R1bGUgVG9rZW4KICAgICAgIFRP
S0VOX0tFWSA9ICJ0b2tlbj0iCiAgICAgICBUT0tFTl9SRUdFWCA9IC9eKFRv
a2VufEJlYXJlcilccysvCi0gICAgICBBVVRITl9QQUlSX0RFTElNSVRFUlMg
PSAvKD86LHw7fFx0KykvCisgICAgICBBVVRITl9QQUlSX0RFTElNSVRFUlMg
PSAvKD86LHw7fFx0KS8KICAgICAgIGV4dGVuZCBzZWxmCiAKICAgICAgIG1v
ZHVsZSBDb250cm9sbGVyTWV0aG9kcwpkaWZmIC0tZ2l0IGEvYWN0aW9ucGFj
ay90ZXN0L2NvbnRyb2xsZXIvaHR0cF90b2tlbl9hdXRoZW50aWNhdGlvbl90
ZXN0LnJiIGIvYWN0aW9ucGFjay90ZXN0L2NvbnRyb2xsZXIvaHR0cF90b2tl
bl9hdXRoZW50aWNhdGlvbl90ZXN0LnJiCmluZGV4IDU3Yjc4MTU0YmMuLjIz
ZDgzNjA5YjkgMTAwNjQ0Ci0tLSBhL2FjdGlvbnBhY2svdGVzdC9jb250cm9s
bGVyL2h0dHBfdG9rZW5fYXV0aGVudGljYXRpb25fdGVzdC5yYgorKysgYi9h
Y3Rpb25wYWNrL3Rlc3QvY29udHJvbGxlci9odHRwX3Rva2VuX2F1dGhlbnRp
Y2F0aW9uX3Rlc3QucmIKQEAgLTg4LDYgKzg4LDE2IEBAIGRlZiBhdXRoZW50
aWNhdGVfbG9uZ19jcmVkZW50aWFscwogICAgIGFzc2VydF9lcXVhbCAiSFRU
UCBUb2tlbjogQWNjZXNzIGRlbmllZC5cbiIsIEByZXNwb25zZS5ib2R5LCAi
QXV0aGVudGljYXRpb24gaGVhZGVyIHdhcyBub3QgcHJvcGVybHkgcGFyc2Vk
IgogICBlbmQKIAorICB0ZXN0ICJhdXRoZW50aWNhdGlvbiByZXF1ZXN0IHdp
dGggZXZpbCBoZWFkZXIiIGRvCisgICAgQHJlcXVlc3QuZW52WyJIVFRQX0FV
VEhPUklaQVRJT04iXSA9ICJUb2tlbiAuIiArICIgIiAqICgxMDI0KjgwLTgp
ICsgIi4iCisgICAgVGltZW91dC50aW1lb3V0KDEpIGRvCisgICAgICBnZXQg
OmluZGV4CisgICAgZW5kCisKKyAgICBhc3NlcnRfcmVzcG9uc2UgOnVuYXV0
aG9yaXplZAorICAgIGFzc2VydF9lcXVhbCAiSFRUUCBUb2tlbjogQWNjZXNz
IGRlbmllZC5cbiIsIEByZXNwb25zZS5ib2R5LCAiQXV0aGVudGljYXRpb24g
aGVhZGVyIHdhcyBub3QgcHJvcGVybHkgcGFyc2VkIgorICBlbmQKKwogICB0
ZXN0ICJzdWNjZXNzZnVsIGF1dGhlbnRpY2F0aW9uIHJlcXVlc3Qgd2l0aCBC
ZWFyZXIgaW5zdGVhZCBvZiBUb2tlbiIgZG8KICAgICBAcmVxdWVzdC5lbnZb
IkhUVFBfQVVUSE9SSVpBVElPTiJdID0gIkJlYXJlciBsaWZvIgogICAgIGdl
dCA6aW5kZXgKLS0gCjIuMzAuMAoK

--00000000000006f19d05c197db47
Content-Type: application/octet-stream; 
	name="5-2-http-authentication-dos.patch"
Content-Disposition: attachment; 
	filename="5-2-http-authentication-dos.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_kobosgg32>
X-Attachment-Id: f_kobosgg32

RnJvbSAzZDllOWZkZjE0ZTA0NGIzYmE2NmY5MDk1ODJjMjI4YTlkNGZmYjVj
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBBYXJvbiBQYXR0ZXJz
b24gPGFhcm9uQHJ1YnlvbnJhaWxzLm9yZz4KRGF0ZTogVHVlLCA0IE1heSAy
MDIxIDE1OjQ5OjIxIC0wNzAwClN1YmplY3Q6IFtQQVRDSF0gUHJldmVudCBz
bG93IHJlZ2V4IHdoZW4gcGFyc2luZyBob3N0IGF1dGhvcml6YXRpb24gaGVh
ZGVyCgpUaGUgb2xkIHJlZ2V4IGNvdWxkIHRha2UgdG9vIGxvbmcgd2hlbiBw
YXJzaW5nIGFuIGF1dGhvcml6YXRpb24gaGVhZGVyLAphbmQgdGhpcyBjb3Vs
ZCBwb3RlbnRpYWxseSBjYXVzZSBhIERvUyB2dWxuZXJhYmlsaXR5CgpbQ1ZF
LTIwMjEtMjI5MDRdCi0tLQogLi4uL2xpYi9hY3Rpb25fY29udHJvbGxlci9t
ZXRhbC9odHRwX2F1dGhlbnRpY2F0aW9uLnJiIHwgIDIgKy0KIC4uLi90ZXN0
L2NvbnRyb2xsZXIvaHR0cF90b2tlbl9hdXRoZW50aWNhdGlvbl90ZXN0LnJi
ICB8IDEwICsrKysrKysrKysKIDIgZmlsZXMgY2hhbmdlZCwgMTEgaW5zZXJ0
aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2FjdGlvbnBh
Y2svbGliL2FjdGlvbl9jb250cm9sbGVyL21ldGFsL2h0dHBfYXV0aGVudGlj
YXRpb24ucmIgYi9hY3Rpb25wYWNrL2xpYi9hY3Rpb25fY29udHJvbGxlci9t
ZXRhbC9odHRwX2F1dGhlbnRpY2F0aW9uLnJiCmluZGV4IDAxNjc2ZjMyMzcu
LmQyZTY2NzQzNmYgMTAwNjQ0Ci0tLSBhL2FjdGlvbnBhY2svbGliL2FjdGlv
bl9jb250cm9sbGVyL21ldGFsL2h0dHBfYXV0aGVudGljYXRpb24ucmIKKysr
IGIvYWN0aW9ucGFjay9saWIvYWN0aW9uX2NvbnRyb2xsZXIvbWV0YWwvaHR0
cF9hdXRoZW50aWNhdGlvbi5yYgpAQCAtNDA2LDcgKzQwNiw3IEBAIGRlZiBv
cGFxdWUoc2VjcmV0X2tleSkKICAgICBtb2R1bGUgVG9rZW4KICAgICAgIFRP
S0VOX0tFWSA9ICJ0b2tlbj0iCiAgICAgICBUT0tFTl9SRUdFWCA9IC9eKFRv
a2VufEJlYXJlcilccysvCi0gICAgICBBVVRITl9QQUlSX0RFTElNSVRFUlMg
PSAvKD86LHw7fFx0KykvCisgICAgICBBVVRITl9QQUlSX0RFTElNSVRFUlMg
PSAvKD86LHw7fFx0KS8KICAgICAgIGV4dGVuZCBzZWxmCiAKICAgICAgIG1v
ZHVsZSBDb250cm9sbGVyTWV0aG9kcwpkaWZmIC0tZ2l0IGEvYWN0aW9ucGFj
ay90ZXN0L2NvbnRyb2xsZXIvaHR0cF90b2tlbl9hdXRoZW50aWNhdGlvbl90
ZXN0LnJiIGIvYWN0aW9ucGFjay90ZXN0L2NvbnRyb2xsZXIvaHR0cF90b2tl
bl9hdXRoZW50aWNhdGlvbl90ZXN0LnJiCmluZGV4IDY3MmFhMTM1MWMuLmZl
N2I3M2M1MWEgMTAwNjQ0Ci0tLSBhL2FjdGlvbnBhY2svdGVzdC9jb250cm9s
bGVyL2h0dHBfdG9rZW5fYXV0aGVudGljYXRpb25fdGVzdC5yYgorKysgYi9h
Y3Rpb25wYWNrL3Rlc3QvY29udHJvbGxlci9odHRwX3Rva2VuX2F1dGhlbnRp
Y2F0aW9uX3Rlc3QucmIKQEAgLTg5LDYgKzg5LDE2IEBAIGRlZiBhdXRoZW50
aWNhdGVfbG9uZ19jcmVkZW50aWFscwogICAgIGFzc2VydF9lcXVhbCAiSFRU
UCBUb2tlbjogQWNjZXNzIGRlbmllZC5cbiIsIEByZXNwb25zZS5ib2R5LCAi
QXV0aGVudGljYXRpb24gaGVhZGVyIHdhcyBub3QgcHJvcGVybHkgcGFyc2Vk
IgogICBlbmQKIAorICB0ZXN0ICJhdXRoZW50aWNhdGlvbiByZXF1ZXN0IHdp
dGggZXZpbCBoZWFkZXIiIGRvCisgICAgQHJlcXVlc3QuZW52WyJIVFRQX0FV
VEhPUklaQVRJT04iXSA9ICJUb2tlbiAuIiArICIgIiAqICgxMDI0KjgwLTgp
ICsgIi4iCisgICAgVGltZW91dC50aW1lb3V0KDEpIGRvCisgICAgICBnZXQg
OmluZGV4CisgICAgZW5kCisKKyAgICBhc3NlcnRfcmVzcG9uc2UgOnVuYXV0
aG9yaXplZAorICAgIGFzc2VydF9lcXVhbCAiSFRUUCBUb2tlbjogQWNjZXNz
IGRlbmllZC5cbiIsIEByZXNwb25zZS5ib2R5LCAiQXV0aGVudGljYXRpb24g
aGVhZGVyIHdhcyBub3QgcHJvcGVybHkgcGFyc2VkIgorICBlbmQKKwogICB0
ZXN0ICJzdWNjZXNzZnVsIGF1dGhlbnRpY2F0aW9uIHJlcXVlc3Qgd2l0aCBC
ZWFyZXIgaW5zdGVhZCBvZiBUb2tlbiIgZG8KICAgICBAcmVxdWVzdC5lbnZb
IkhUVFBfQVVUSE9SSVpBVElPTiJdID0gIkJlYXJlciBsaWZvIgogICAgIGdl
dCA6aW5kZXgKLS0gCjIuMzAuMAoK

--00000000000006f19d05c197db47--
