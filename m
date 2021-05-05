X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["11309" "Wednesday" "5" "May" "2021" "09:36:49" "-0700" "Aaron Patterson" "aaron.patterson@gmail.com" nil "229" "[oss-security] [CVE-2021-22902] Possible Denial of Service vulnerability in Action Dispatch" nil nil nil "5" nil nil (number mark "U       aaron.patter May  5  229/11309 " thread-indent "\"[oss-security] [CVE-2021-22902] Possible Denial of Service vulnerability in Action Dispatch\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2021-22902] Possible Denial of Service vulnerability in Action Dispatch" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7721 invoked by uid 550); 5 May 2021 16:43:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5158 invoked from network); 5 May 2021 16:37:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=pufHO7Sny8Xqr4TswRmob5iCy/BnNEdyW7dxG3zyhlk=;
        b=nUtUWxNcxx69i8vVzAG5Jt1dyc8/NC0upDfk7nTMd9wuThBHY4O+4bwuE78JyFgoa+
         f1x3XxZD7Pk0fVsNT9kJclcON2sCJhMt215qTI0Q7XKOID7C+lFrGrR8IGDzF9Cm8LZB
         rvomuhJCvDqNG2k1QyNmCYq2wguzWEvrrCBvMo/Ja+nirAHqumptn4j70gm+qQX1dUaE
         suNPjkJMeTWRvOm+xPrlzjil2vJFmB9tWApDaRExh5C6l7K9UuRVJ4ohCrrtqUlnkM8l
         kl6lp2SMKIBHadEM80RKvfmwXXcyDe5U8P4+AHRqY/8QlTR4vyS0BX5ZuvbeT4IuPGoa
         wucw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=pufHO7Sny8Xqr4TswRmob5iCy/BnNEdyW7dxG3zyhlk=;
        b=k7X2Lv3VCytZhYvivOpqngZGPyY8ZrWVmm/XDst045jpkGlAD+kXOzcRIWYCmM3L4U
         qDPYs5o8zvMg2fr0hqAhK58GWf5RxHxZinq0ubrBI0pdTcLIov2YWUrJDkbx/BO5gzOo
         Ks5tAT1cvr/ZCN3bZMjj6BTR6H4K3XUhXtHEP95OPBRIvce1G8ri8B1HLORkdC9GRB8S
         oliy2iq6pun8/B568JaiSxvnm4CjzboproYiV/ZeGvO/8kiMMrKc/BcE82T5odJKZoOA
         ZIo4tFtMCj3/r+1XAJY2Sn0UJ5j7uIZrBAUh9p30LwxVJgH4OxQ8cU4faSekq9dll5mx
         1Znw==
X-Gm-Message-State: AOAM5313gqvjkCjPlUCmt4QqDFB5zNEf4TGcbzXAERzCkBczWSzcdcoX
	xkWS7YfXjAbjsB+Sj1+ktMAwcGjn7m5RDsWEBhA=
X-Google-Smtp-Source: ABdhPJxictvlHg8YDUqp+ZpbnSS1E6ZjF94SbP5uXWVgMGNxZKEIq7s7Au0dXfh12Dy52lcwKbuopD+66Rh1wU7OdVs=
X-Received: by 2002:a05:6402:416:: with SMTP id q22mr33217296edv.204.1620232620946;
 Wed, 05 May 2021 09:37:00 -0700 (PDT)
MIME-Version: 1.0
From: Aaron Patterson <aaron.patterson@gmail.com>
Date: Wed, 5 May 2021 09:36:49 -0700
Message-ID: <CALBaBG8=MYzxc7UAA_iMMX_SO1YzN2KPN0zfXAGBOzOqctWDsg@mail.gmail.com>
To: rubyonrails-security@googlegroups.com, oss-security@lists.openwall.com, 
	ruby-security-ann@googlegroups.com
Content-Type: multipart/mixed; boundary="000000000000d35b4305c197cd38"
Subject: [oss-security] [CVE-2021-22902] Possible Denial of Service vulnerability in Action Dispatch

--000000000000d35b4305c197cd38
Content-Type: multipart/alternative; boundary="000000000000d35b4005c197cd36"

--000000000000d35b4005c197cd36
Content-Type: text/plain; charset="UTF-8"

There is a possible Denial of Service vulnerability in the Mime type parser
of
Action Dispatch. This vulnerability has been assigned the CVE identifier
CVE-2021-22902.

Versions Affected:  >= 6.0.0
Not affected:       < 6.0.0
Fixed Versions:     6.0.3.7, 6.1.0.2

Impact
------
There is a possible Denial of Service vulnerability in Action Dispatch.
Carefully crafted Accept headers can cause the mime type parser in Action
Dispatch to do catastrophic backtracking in the regular expression engine.

Releases
--------
The fixed releases are available at the normal locations.

Workarounds
-----------
The following monkey patch placed in an initializer can be used to work
around
the issue:

```ruby
module Mime
  class Type
    MIME_REGEXP =
/\A(?:\*\/\*|#{MIME_NAME}\/(?:\*|#{MIME_NAME})(?>\s*#{MIME_PARAMETER}\s*)*)\z/
  end
end
```

Patches
-------
To aid users who aren't able to upgrade immediately we have provided
patches for
the two supported release series. They are in git-am format and consist of a
single changeset.

* 6-0-Prevent-catastrophic-backtracking-during-mime-parsin.patch - Patch
for 6.0 series
* 6-1-Prevent-catastrophic-backtracking-during-mime-parsin.patch - Patch
for 6.1 series

Please note that only the 6.1.Z, 6.0.Z, and 5.2.Z series are supported at
present. Users of earlier unsupported releases are advised to upgrade as
soon
as possible as we cannot guarantee the continued availability of security
fixes for unsupported releases.

Credits
-------

Thanks to Security Curious <security-curious@pm.me> for reporting this!

-- 
Aaron Patterson
http://tenderlovemaking.com/

--000000000000d35b4005c197cd36
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>There is a possible Denial of Servic=
e vulnerability in the Mime type parser of</div><div>Action Dispatch. This =
vulnerability has been assigned the CVE identifier</div><div>CVE-2021-22902=
.</div><div><br></div><div>Versions Affected: =C2=A0&gt;=3D 6.0.0</div><div=
>Not affected: =C2=A0 =C2=A0 =C2=A0 &lt; 6.0.0</div><div>Fixed Versions: =
=C2=A0 =C2=A0 6.0.3.7, 6.1.0.2</div><div><br></div><div>Impact</div><div>--=
----</div><div>There is a possible Denial of Service vulnerability in Actio=
n Dispatch.</div><div>Carefully crafted Accept headers can cause the mime t=
ype parser in Action</div><div>Dispatch to do catastrophic backtracking in =
the regular expression engine.</div><div><br></div><div>Releases</div><div>=
--------</div><div>The fixed releases are available at the normal locations=
.</div><div><br></div><div>Workarounds</div><div>-----------</div><div>The =
following monkey patch placed in an initializer can be used to work around<=
/div><div>the issue:</div><div><br></div><div>```ruby</div><div>module Mime=
</div><div>=C2=A0 class Type</div><div>=C2=A0 =C2=A0 MIME_REGEXP =3D /\A(?:=
\*\/\*|#{MIME_NAME}\/(?:\*|#{MIME_NAME})(?&gt;\s*#{MIME_PARAMETER}\s*)*)\z/=
</div><div>=C2=A0 end</div><div>end</div><div>```</div><div><br></div><div>=
Patches</div><div>-------</div><div>To aid users who aren&#39;t able to upg=
rade immediately we have provided patches for</div><div>the two supported r=
elease series. They are in git-am format and consist of a</div><div>single =
changeset.</div><div><br></div><div>* 6-0-Prevent-catastrophic-backtracking=
-during-mime-parsin.patch - Patch for 6.0 series</div><div>* 6-1-Prevent-ca=
tastrophic-backtracking-during-mime-parsin.patch - Patch for 6.1 series</di=
v><div><br></div><div>Please note that only the 6.1.Z, 6.0.Z, and 5.2.Z ser=
ies are supported at</div><div>present. Users of earlier unsupported releas=
es are advised to upgrade as soon</div><div>as possible as we cannot guaran=
tee the continued availability of security</div><div>fixes for unsupported =
releases.</div><div><br></div><div>Credits</div><div>-------</div><div><br>=
</div><div>Thanks to Security Curious &lt;<a href=3D"mailto:security-curiou=
s@pm.me">security-curious@pm.me</a>&gt; for reporting this!</div><div><br><=
/div>-- <br><div dir=3D"ltr" class=3D"gmail_signature">Aaron Patterson<br><=
a href=3D"http://tenderlovemaking.com/" target=3D"_blank">http://tenderlove=
making.com/</a></div></div></div>

--000000000000d35b4005c197cd36--

--000000000000d35b4305c197cd38
Content-Type: application/octet-stream; 
	name="6-0-Prevent-catastrophic-backtracking-during-mime-parsin.patch"
Content-Disposition: attachment; 
	filename="6-0-Prevent-catastrophic-backtracking-during-mime-parsin.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_kobonnns1>
X-Attachment-Id: f_kobonnns1

RnJvbSA0NDZhZmJkMTUzNjBhMzQ3YzkyM2NhNzc1YjIxYTI4NmRjYjUyOTdh
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBTZWN1cml0eSBDdXJp
b3VzIDxzZWN1cml0eS1jdXJpb3VzQHBtLm1lPgpEYXRlOiBTYXQsIDI3IE1h
ciAyMDIxIDE2OjA2OjU5IC0wNDAwClN1YmplY3Q6IFtQQVRDSF0gUHJldmVu
dCBjYXRhc3Ryb3BoaWMgYmFja3RyYWNraW5nIGR1cmluZyBtaW1lIHBhcnNp
bmcKClRoZSByZWd1bGFyIGV4cHJlc3Npb24gdXNlZCB0byBwYXJzZSB0aGUg
bWltZSB0eXBlIGNhbiByZXN1bHRzIGluCmNhdGFzdHJvcGhpYyBiYWNrdHJh
Y2tpbmdbMV0gYWxsb3dpbmcgZm9yIGEgUmVET1MgYXR0YWNrWzJdLgoKVGhp
cyBjb21taXQgdXNlcyBhdG9taWMgZ3JvdXBpbmdbM10gdG8gcHJldmVudCBi
YWNrdHJhY2tpbmcuCgoxLiBodHRwczovL3d3dy5yZWd1bGFyLWV4cHJlc3Np
b25zLmluZm8vY2F0YXN0cm9waGljLmh0bWwKMi4gaHR0cHM6Ly9lbi53aWtp
cGVkaWEub3JnL3dpa2kvUmVEb1MKMy4gaHR0cHM6Ly93d3cucmVndWxhci1l
eHByZXNzaW9ucy5pbmZvL2F0b21pYy5odG1sCgpbQ1ZFLTIwMjEtMjI5MDJd
Ci0tLQogYWN0aW9ucGFjay9saWIvYWN0aW9uX2Rpc3BhdGNoL2h0dHAvbWlt
ZV90eXBlLnJiIHwgMiArLQogYWN0aW9ucGFjay90ZXN0L2Rpc3BhdGNoL21p
bWVfdHlwZV90ZXN0LnJiICAgICAgIHwgNiArKysrKysKIDIgZmlsZXMgY2hh
bmdlZCwgNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0t
Z2l0IGEvYWN0aW9ucGFjay9saWIvYWN0aW9uX2Rpc3BhdGNoL2h0dHAvbWlt
ZV90eXBlLnJiIGIvYWN0aW9ucGFjay9saWIvYWN0aW9uX2Rpc3BhdGNoL2h0
dHAvbWltZV90eXBlLnJiCmluZGV4IDY3MTlmMGMzZDkuLmE1ODE2OTI0ZGUg
MTAwNjQ0Ci0tLSBhL2FjdGlvbnBhY2svbGliL2FjdGlvbl9kaXNwYXRjaC9o
dHRwL21pbWVfdHlwZS5yYgorKysgYi9hY3Rpb25wYWNrL2xpYi9hY3Rpb25f
ZGlzcGF0Y2gvaHR0cC9taW1lX3R5cGUucmIKQEAgLTIyNiw3ICsyMjYsNyBA
QCBkZWYgdW5yZWdpc3RlcihzeW1ib2wpCiAgICAgTUlNRV9QQVJBTUVURVJf
S0VZID0gIlthLXpBLVowLTldW2EtekEtWjAtOSN7UmVnZXhwLmVzY2FwZSgn
ISMkJi1eXy4rJyl9XXswLDEyNn0iCiAgICAgTUlNRV9QQVJBTUVURVJfVkFM
VUUgPSAiI3tSZWdleHAuZXNjYXBlKCciJyl9P1thLXpBLVowLTldW2EtekEt
WjAtOSN7UmVnZXhwLmVzY2FwZSgnISMkJi1eXy4rJyl9XXswLDEyNn0je1Jl
Z2V4cC5lc2NhcGUoJyInKX0/IgogICAgIE1JTUVfUEFSQU1FVEVSID0gIlxz
Klw7XHMqI3tNSU1FX1BBUkFNRVRFUl9LRVl9KD86XD0je01JTUVfUEFSQU1F
VEVSX1ZBTFVFfSk/IgotICAgIE1JTUVfUkVHRVhQID0gL1xBKD86XCpcL1wq
fCN7TUlNRV9OQU1FfVwvKD86XCp8I3tNSU1FX05BTUV9KSg/OlxzKiN7TUlN
RV9QQVJBTUVURVJ9XHMqKSopXHovCisgICAgTUlNRV9SRUdFWFAgPSAvXEEo
PzpcKlwvXCp8I3tNSU1FX05BTUV9XC8oPzpcKnwje01JTUVfTkFNRX0pKD8+
XHMqI3tNSU1FX1BBUkFNRVRFUn1ccyopKilcei8KIAogICAgIGNsYXNzIElu
dmFsaWRNaW1lVHlwZSA8IFN0YW5kYXJkRXJyb3I7IGVuZAogCmRpZmYgLS1n
aXQgYS9hY3Rpb25wYWNrL3Rlc3QvZGlzcGF0Y2gvbWltZV90eXBlX3Rlc3Qu
cmIgYi9hY3Rpb25wYWNrL3Rlc3QvZGlzcGF0Y2gvbWltZV90eXBlX3Rlc3Qu
cmIKaW5kZXggMmRmOTczZTQ0ZC4uMjNhNWI3ZjMzOCAxMDA2NDQKLS0tIGEv
YWN0aW9ucGFjay90ZXN0L2Rpc3BhdGNoL21pbWVfdHlwZV90ZXN0LnJiCisr
KyBiL2FjdGlvbnBhY2svdGVzdC9kaXNwYXRjaC9taW1lX3R5cGVfdGVzdC5y
YgpAQCAtMjI1LDUgKzIyNSwxMSBAQCBjbGFzcyBNaW1lVHlwZVRlc3QgPCBB
Y3RpdmVTdXBwb3J0OjpUZXN0Q2FzZQogICAgIGFzc2VydF9yYWlzZXMgTWlt
ZTo6VHlwZTo6SW52YWxpZE1pbWVUeXBlIGRvCiAgICAgICBNaW1lOjpUeXBl
Lm5ldyhuaWwpCiAgICAgZW5kCisKKyAgICBhc3NlcnRfcmFpc2VzIE1pbWU6
OlR5cGU6OkludmFsaWRNaW1lVHlwZSBkbworICAgICAgVGltZW91dC50aW1l
b3V0KDEpIGRvICMgU2hvdWxkbid0IHRha2UgbW9yZSB0aGFuIDFzCisgICAg
ICAgIE1pbWU6OlR5cGUubmV3KCJ0ZXh0L2h0bWwgOzAgOzAgOzAgOzAgOzAg
OzAgOzAgOzAgOzAgOzAgOzAgOzAgOzAgOzAgOzAgOzAgOzAgOzA7IikKKyAg
ICAgIGVuZAorICAgIGVuZAogICBlbmQKIGVuZAotLSAKMi4zMC4wCgo=

--000000000000d35b4305c197cd38
Content-Type: application/octet-stream; 
	name="6-1-Prevent-catastrophic-backtracking-during-mime-parsin.patch"
Content-Disposition: attachment; 
	filename="6-1-Prevent-catastrophic-backtracking-during-mime-parsin.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_kobonnms0>
X-Attachment-Id: f_kobonnms0

RnJvbSA0MGY4MmRjMzhmZTNmMjFkNDFiOTM0NWEyNmFkMjNhYzkwY2YzMWM5
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBTZWN1cml0eSBDdXJp
b3VzIDxzZWN1cml0eS1jdXJpb3VzQHBtLm1lPgpEYXRlOiBTYXQsIDI3IE1h
ciAyMDIxIDE2OjA2OjU5IC0wNDAwClN1YmplY3Q6IFtQQVRDSF0gUHJldmVu
dCBjYXRhc3Ryb3BoaWMgYmFja3RyYWNraW5nIGR1cmluZyBtaW1lIHBhcnNp
bmcKClRoZSByZWd1bGFyIGV4cHJlc3Npb24gdXNlZCB0byBwYXJzZSB0aGUg
bWltZSB0eXBlIGNhbiByZXN1bHRzIGluCmNhdGFzdHJvcGhpYyBiYWNrdHJh
Y2tpbmdbMV0gYWxsb3dpbmcgZm9yIGEgUmVET1MgYXR0YWNrWzJdLgoKVGhp
cyBjb21taXQgdXNlcyBhdG9taWMgZ3JvdXBpbmdbM10gdG8gcHJldmVudCBi
YWNrdHJhY2tpbmcuCgoxLiBodHRwczovL3d3dy5yZWd1bGFyLWV4cHJlc3Np
b25zLmluZm8vY2F0YXN0cm9waGljLmh0bWwKMi4gaHR0cHM6Ly9lbi53aWtp
cGVkaWEub3JnL3dpa2kvUmVEb1MKMy4gaHR0cHM6Ly93d3cucmVndWxhci1l
eHByZXNzaW9ucy5pbmZvL2F0b21pYy5odG1sCgpbQ1ZFLTIwMjEtMjI5MDJd
Ci0tLQogYWN0aW9ucGFjay9saWIvYWN0aW9uX2Rpc3BhdGNoL2h0dHAvbWlt
ZV90eXBlLnJiIHwgMiArLQogYWN0aW9ucGFjay90ZXN0L2Rpc3BhdGNoL21p
bWVfdHlwZV90ZXN0LnJiICAgICAgIHwgNiArKysrKysKIDIgZmlsZXMgY2hh
bmdlZCwgNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0t
Z2l0IGEvYWN0aW9ucGFjay9saWIvYWN0aW9uX2Rpc3BhdGNoL2h0dHAvbWlt
ZV90eXBlLnJiIGIvYWN0aW9ucGFjay9saWIvYWN0aW9uX2Rpc3BhdGNoL2h0
dHAvbWltZV90eXBlLnJiCmluZGV4IGEwZjMyZDAyYzYuLjFkMDE4MzY0MWQg
MTAwNjQ0Ci0tLSBhL2FjdGlvbnBhY2svbGliL2FjdGlvbl9kaXNwYXRjaC9o
dHRwL21pbWVfdHlwZS5yYgorKysgYi9hY3Rpb25wYWNrL2xpYi9hY3Rpb25f
ZGlzcGF0Y2gvaHR0cC9taW1lX3R5cGUucmIKQEAgLTIyOSw3ICsyMjksNyBA
QCBkZWYgdW5yZWdpc3RlcihzeW1ib2wpCiAgICAgTUlNRV9QQVJBTUVURVJf
S0VZID0gIlthLXpBLVowLTldW2EtekEtWjAtOSN7UmVnZXhwLmVzY2FwZSgn
ISMkJi1eXy4rJyl9XXswLDEyNn0iCiAgICAgTUlNRV9QQVJBTUVURVJfVkFM
VUUgPSAiI3tSZWdleHAuZXNjYXBlKCciJyl9P1thLXpBLVowLTldW2EtekEt
WjAtOSN7UmVnZXhwLmVzY2FwZSgnISMkJi1eXy4rJyl9XXswLDEyNn0je1Jl
Z2V4cC5lc2NhcGUoJyInKX0/IgogICAgIE1JTUVfUEFSQU1FVEVSID0gIlxz
Klw7XHMqI3tNSU1FX1BBUkFNRVRFUl9LRVl9KD86XD0je01JTUVfUEFSQU1F
VEVSX1ZBTFVFfSk/IgotICAgIE1JTUVfUkVHRVhQID0gL1xBKD86XCpcL1wq
fCN7TUlNRV9OQU1FfVwvKD86XCp8I3tNSU1FX05BTUV9KSg/OlxzKiN7TUlN
RV9QQVJBTUVURVJ9XHMqKSopXHovCisgICAgTUlNRV9SRUdFWFAgPSAvXEEo
PzpcKlwvXCp8I3tNSU1FX05BTUV9XC8oPzpcKnwje01JTUVfTkFNRX0pKD8+
XHMqI3tNSU1FX1BBUkFNRVRFUn1ccyopKilcei8KIAogICAgIGNsYXNzIElu
dmFsaWRNaW1lVHlwZSA8IFN0YW5kYXJkRXJyb3I7IGVuZAogCmRpZmYgLS1n
aXQgYS9hY3Rpb25wYWNrL3Rlc3QvZGlzcGF0Y2gvbWltZV90eXBlX3Rlc3Qu
cmIgYi9hY3Rpb25wYWNrL3Rlc3QvZGlzcGF0Y2gvbWltZV90eXBlX3Rlc3Qu
cmIKaW5kZXggYjI5YTdmNjI3My4uZDVlZjdiN2Y1MyAxMDA2NDQKLS0tIGEv
YWN0aW9ucGFjay90ZXN0L2Rpc3BhdGNoL21pbWVfdHlwZV90ZXN0LnJiCisr
KyBiL2FjdGlvbnBhY2svdGVzdC9kaXNwYXRjaC9taW1lX3R5cGVfdGVzdC5y
YgpAQCAtMjMxLDYgKzIzMSwxMiBAQCBjbGFzcyBNaW1lVHlwZVRlc3QgPCBB
Y3RpdmVTdXBwb3J0OjpUZXN0Q2FzZQogICAgIGFzc2VydF9yYWlzZXMgTWlt
ZTo6VHlwZTo6SW52YWxpZE1pbWVUeXBlIGRvCiAgICAgICBNaW1lOjpUeXBl
Lm5ldyhuaWwpCiAgICAgZW5kCisKKyAgICBhc3NlcnRfcmFpc2VzIE1pbWU6
OlR5cGU6OkludmFsaWRNaW1lVHlwZSBkbworICAgICAgVGltZW91dC50aW1l
b3V0KDEpIGRvICMgU2hvdWxkbid0IHRha2UgbW9yZSB0aGFuIDFzCisgICAg
ICAgIE1pbWU6OlR5cGUubmV3KCJ0ZXh0L2h0bWwgOzAgOzAgOzAgOzAgOzAg
OzAgOzAgOzAgOzAgOzAgOzAgOzAgOzAgOzAgOzAgOzAgOzAgOzA7IikKKyAg
ICAgIGVuZAorICAgIGVuZAogICBlbmQKIAogICB0ZXN0ICJob2xkcyBhIHJl
ZmVyZW5jZSB0byBtaW1lIHN5bWJvbHMiIGRvCi0tIAoyLjMwLjAKCg==

--000000000000d35b4305c197cd38--
