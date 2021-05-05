X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8002" "Wednesday" "5" "May" "2021" "09:38:05" "-0700" "Aaron Patterson" "aaron.patterson@gmail.com" nil "173" "[oss-security] [CVE-2021-22903] Possible Open Redirect Vulnerability in Action Pack" nil nil nil "5" nil nil (number mark "U       aaron.patter May  5  173/8002  " thread-indent "\"[oss-security] [CVE-2021-22903] Possible Open Redirect Vulnerability in Action Pack\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2021-22903] Possible Open Redirect Vulnerability in Action Pack" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8000 invoked by uid 550); 5 May 2021 16:43:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5566 invoked from network); 5 May 2021 16:38:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=YRTPhOjUmwfUTO0jH+/WgBwX9Zul6TGj2uxAzYe2eIA=;
        b=AblL5UXwhTmiDNyfHY8p3/dYgSCj5jInh01LpMowaqi/b+0E2ZPjfJEcepHUBGnLnC
         ZUBUeiIg5YiKphvlS1d7qnLl8h1NkS3XWTVv9cVNV4eU31P+HtdriIOB7m4PCpkpd4jo
         in/8qO9micOXVUZs+neHBjk7Ty4NQPVxntenwfVlQalBM/WpT7yweGchxvEfh5jR3vsB
         Xri3u5231GetgrH/W7TZKhTcr/62H8YsPHtEhpvxVgDBDjW2KmIEuSuA5ZWkYUokfnqp
         I2lLJ+psAymjEok9ESK7nXf3exwHM3J5rMbmANStvWKGR+9A6e3rKeWQ8yWB4kAg+gxL
         Ozmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=YRTPhOjUmwfUTO0jH+/WgBwX9Zul6TGj2uxAzYe2eIA=;
        b=ScIBakxYIDKzCao9+lJzwaYPEVG3YqZsV6rsW6IWSfqJ5GPThi6o9rQjoKMxfuP3AJ
         VlPuK5HunZuWHpKnvny5VarmTPrEhffshcjFlwfMNAXux3qj+NWBfkQlPAWF0by9jxul
         7/QnB58PKjNGmtMSDqOjkIEl9chbdqK4ggssCz2Gm+wFGeSjaKAN/WQLA6f4P2PaWPc7
         7ZLStIK6KEnMPW2HFBKNteGhdM6/rTYbH0++nPj+R3V0cLVchLlUHx1m3PhYc8vqPqP5
         tTHh7OwCNTosv/ZOgRYVUewk7EXN7xoYIJ4yDpN5zerYhl6k89iTagcOn3iYB/EYVIk9
         /4uw==
X-Gm-Message-State: AOAM533E4aljZbyTctocM9xguRBi1XpwrQeURhxCSgRHO+IYR3hTtrSf
	dlnRFwgV3TGaHzlRD0cSz+A+27DA1vQwasCwYg6ZN94zLlY=
X-Google-Smtp-Source: ABdhPJyQvAXjM8hwM4/QarpQ7vQBOAswWpvNySWIOls4IlXf5hBBgmLHYGJpdOmLUsuB1YVrB7UENFsZcrHuKcBSFr8=
X-Received: by 2002:a05:6402:19a:: with SMTP id r26mr32701670edv.44.1620232697348;
 Wed, 05 May 2021 09:38:17 -0700 (PDT)
MIME-Version: 1.0
From: Aaron Patterson <aaron.patterson@gmail.com>
Date: Wed, 5 May 2021 09:38:05 -0700
Message-ID: <CALBaBG_xu-7Dzbo_3qDSYYuDO30fChi8nis7C_zixhBe8zAOyg@mail.gmail.com>
To: ruby-security-ann@googlegroups.com, rubyonrails-security@googlegroups.com, 
	oss-security@lists.openwall.com
Content-Type: multipart/mixed; boundary="000000000000611fde05c197d292"
Subject: [oss-security] [CVE-2021-22903] Possible Open Redirect Vulnerability in Action Pack

--000000000000611fde05c197d292
Content-Type: multipart/alternative; boundary="000000000000611fdd05c197d290"

--000000000000611fdd05c197d290
Content-Type: text/plain; charset="UTF-8"

There is a possible Open Redirect Vulnerability in Action Pack. This
vulnerability has been assigned the CVE identifier CVE-2021-22903.

Versions Affected:  >= v6.1.0.rc2
Not affected:       < v6.1.0.rc2
Fixed Versions:     6.1.3.2

Impact
------
This is similar to CVE-2021-22881: Specially crafted Host headers in
combination with certain "allowed host" formats can cause the Host
Authorization middleware in Action Pack to redirect users to a malicious
website.

Since rails/rails@9bc7ea5, strings in config.hosts that do not have a
leading
dot are converted to regular expressions without proper escaping. This
causes,
for example, config.hosts << "sub.example.com" to permit a request with a
Host
header value of sub-example.com.


Releases
--------
The fixed releases are available at the normal locations.

Workarounds
-----------
The following monkey patch put in an initializer can be used as a
workaround:

```ruby
class ActionDispatch::HostAuthorization::Permissions
  def sanitize_string(host)
    if host.start_with?(".")
      /\A(.+\.)?#{Regexp.escape(host[1..-1])}\z/i
    else
      /\A#{Regexp.escape host}\z/i
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

* 6-1-open-redirect.patch - Patch for 6.1 series

Please note that only the 6.1.Z, 6.0.Z, and 5.2.Z series are supported at
present. Users of earlier unsupported releases are advised to upgrade as
soon
as possible as we cannot guarantee the continued availability of security
fixes for unsupported releases.

Credits
-------

Thanks Jonathan Hefner (https://hackerone.com/jonathanhefner) for reporting
this bug!

-- 
Aaron Patterson
http://tenderlovemaking.com/

--000000000000611fdd05c197d290
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>There is a possible Open Redirect Vu=
lnerability in Action Pack. This</div><div>vulnerability has been assigned =
the CVE identifier CVE-2021-22903.</div><div><br></div><div>Versions Affect=
ed: =C2=A0&gt;=3D v6.1.0.rc2</div><div>Not affected: =C2=A0 =C2=A0 =C2=A0 &=
lt; v6.1.0.rc2</div><div>Fixed Versions: =C2=A0 =C2=A0 6.1.3.2</div><div><b=
r></div><div>Impact</div><div>------</div><div>This is similar to CVE-2021-=
22881: Specially crafted Host headers in</div><div>combination with certain=
 &quot;allowed host&quot; formats can cause the Host</div><div>Authorizatio=
n middleware in Action Pack to redirect users to a malicious</div><div>webs=
ite.</div><div><br></div><div>Since rails/rails@9bc7ea5, strings in config.=
hosts that do not have a leading</div><div>dot are converted to regular exp=
ressions without proper escaping. This causes,</div><div>for example, confi=
g.hosts &lt;&lt; &quot;<a href=3D"http://sub.example.com">sub.example.com</=
a>&quot; to permit a request with a Host</div><div>header value of <a href=
=3D"http://sub-example.com">sub-example.com</a>.</div><div><br></div><div><=
br></div><div>Releases</div><div>--------</div><div>The fixed releases are =
available at the normal locations.</div><div><br></div><div>Workarounds</di=
v><div>-----------</div><div>The following monkey patch put in an initializ=
er can be used as a workaround:</div><div><br></div><div>```ruby</div><div>=
class ActionDispatch::HostAuthorization::Permissions</div><div>=C2=A0 def s=
anitize_string(host)</div><div>=C2=A0 =C2=A0 if host.start_with?(&quot;.&qu=
ot;)</div><div>=C2=A0 =C2=A0 =C2=A0 /\A(.+\.)?#{Regexp.escape(host[1..-1])}=
\z/i</div><div>=C2=A0 =C2=A0 else</div><div>=C2=A0 =C2=A0 =C2=A0 /\A#{Regex=
p.escape host}\z/i</div><div>=C2=A0 =C2=A0 end</div><div>=C2=A0 end</div><d=
iv>end</div><div>```</div><div><br></div><div>Patches</div><div>-------</di=
v><div>To aid users who aren&#39;t able to upgrade immediately we have prov=
ided patches for</div><div>the two supported release series. They are in gi=
t-am format and consist of a</div><div>single changeset.</div><div><br></di=
v><div>* 6-1-open-redirect.patch - Patch for 6.1 series</div><div><br></div=
><div>Please note that only the 6.1.Z, 6.0.Z, and 5.2.Z series are supporte=
d at</div><div>present. Users of earlier unsupported releases are advised t=
o upgrade as soon</div><div>as possible as we cannot guarantee the continue=
d availability of security</div><div>fixes for unsupported releases.</div><=
div><br></div><div>Credits</div><div>-------</div><div><br></div><div>Thank=
s Jonathan Hefner (<a href=3D"https://hackerone.com/jonathanhefner">https:/=
/hackerone.com/jonathanhefner</a>) for reporting this bug!</div><div><br></=
div>-- <br><div dir=3D"ltr" class=3D"gmail_signature">Aaron Patterson<br><a=
 href=3D"http://tenderlovemaking.com/" target=3D"_blank">http://tenderlovem=
aking.com/</a></div></div></div>

--000000000000611fdd05c197d290--

--000000000000611fde05c197d292
Content-Type: application/octet-stream; name="6-1-open-redirect.patch"
Content-Disposition: attachment; filename="6-1-open-redirect.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_kobopded0>
X-Attachment-Id: f_kobopded0

RnJvbSAxNDM5ZGI1MDU4MTM5MjUwOGExNjkxNTA0Nzc4YWQ4OTQ5ZDBiMDQ1
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBBYXJvbiBQYXR0ZXJz
b24gPGFhcm9uQHJ1YnlvbnJhaWxzLm9yZz4KRGF0ZTogVHVlLCA0IE1heSAy
MDIxIDE1OjIzOjM2IC0wNzAwClN1YmplY3Q6IFtQQVRDSF0gRXNjYXBlIGFs
bG93IGxpc3QgaG9zdHMgY29ycmVjdGx5CgpbQ1ZFLTIwMjEtMjI5MDNdCi0t
LQogLi4uL2FjdGlvbl9kaXNwYXRjaC9taWRkbGV3YXJlL2hvc3RfYXV0aG9y
aXphdGlvbi5yYiAgfCAgMiArLQogYWN0aW9ucGFjay90ZXN0L2Rpc3BhdGNo
L2hvc3RfYXV0aG9yaXphdGlvbl90ZXN0LnJiICAgfCAxMSArKysrKysrKysr
KwogMiBmaWxlcyBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0
aW9uKC0pCgpkaWZmIC0tZ2l0IGEvYWN0aW9ucGFjay9saWIvYWN0aW9uX2Rp
c3BhdGNoL21pZGRsZXdhcmUvaG9zdF9hdXRob3JpemF0aW9uLnJiIGIvYWN0
aW9ucGFjay9saWIvYWN0aW9uX2Rpc3BhdGNoL21pZGRsZXdhcmUvaG9zdF9h
dXRob3JpemF0aW9uLnJiCmluZGV4IGJmMjAyY2I0ZTAuLmUwZmU5YjMzYTAg
MTAwNjQ0Ci0tLSBhL2FjdGlvbnBhY2svbGliL2FjdGlvbl9kaXNwYXRjaC9t
aWRkbGV3YXJlL2hvc3RfYXV0aG9yaXphdGlvbi5yYgorKysgYi9hY3Rpb25w
YWNrL2xpYi9hY3Rpb25fZGlzcGF0Y2gvbWlkZGxld2FyZS9ob3N0X2F1dGhv
cml6YXRpb24ucmIKQEAgLTUzLDcgKzUzLDcgQEAgZGVmIHNhbml0aXplX3N0
cmluZyhob3N0KQogICAgICAgICAgIGlmIGhvc3Quc3RhcnRfd2l0aD8oIi4i
KQogICAgICAgICAgICAgL1xBKC4rXC4pPyN7UmVnZXhwLmVzY2FwZShob3N0
WzEuLi0xXSl9XHovaQogICAgICAgICAgIGVsc2UKLSAgICAgICAgICAgIC9c
QSN7aG9zdH1cei9pCisgICAgICAgICAgICAvXEEje1JlZ2V4cC5lc2NhcGUg
aG9zdH1cei9pCiAgICAgICAgICAgZW5kCiAgICAgICAgIGVuZAogICAgIGVu
ZApkaWZmIC0tZ2l0IGEvYWN0aW9ucGFjay90ZXN0L2Rpc3BhdGNoL2hvc3Rf
YXV0aG9yaXphdGlvbl90ZXN0LnJiIGIvYWN0aW9ucGFjay90ZXN0L2Rpc3Bh
dGNoL2hvc3RfYXV0aG9yaXphdGlvbl90ZXN0LnJiCmluZGV4IDNjZjE0MTBh
MzEuLmJhNWE0NDNiNWIgMTAwNjQ0Ci0tLSBhL2FjdGlvbnBhY2svdGVzdC9k
aXNwYXRjaC9ob3N0X2F1dGhvcml6YXRpb25fdGVzdC5yYgorKysgYi9hY3Rp
b25wYWNrL3Rlc3QvZGlzcGF0Y2gvaG9zdF9hdXRob3JpemF0aW9uX3Rlc3Qu
cmIKQEAgLTIzMiw2ICsyMzIsMTcgQEAgY2xhc3MgSG9zdEF1dGhvcml6YXRp
b25UZXN0IDwgQWN0aW9uRGlzcGF0Y2g6OkludGVncmF0aW9uVGVzdAogICAg
IGFzc2VydF9tYXRjaCAiQmxvY2tlZCBob3N0OiBleGFtcGxlLmNvbSNzdWIu
ZXhhbXBsZS5jb20iLCByZXNwb25zZS5ib2R5CiAgIGVuZAogCisgIHRlc3Qg
ImJsb2NrcyByZXF1ZXN0cyB0byBzaW1pbGFyIGhvc3QiIGRvCisgICAgQGFw
cCA9IEFjdGlvbkRpc3BhdGNoOjpIb3N0QXV0aG9yaXphdGlvbi5uZXcoQXBw
LCAic3ViLmV4YW1wbGUuY29tIikKKworICAgIGdldCAiLyIsIGVudjogewor
ICAgICAgIkhPU1QiID0+ICJzdWItZXhhbXBsZS5jb20iLAorICAgIH0KKwor
ICAgIGFzc2VydF9yZXNwb25zZSA6Zm9yYmlkZGVuCisgICAgYXNzZXJ0X21h
dGNoICJCbG9ja2VkIGhvc3Q6IHN1Yi1leGFtcGxlLmNvbSIsIHJlc3BvbnNl
LmJvZHkKKyAgZW5kCisKICAgdGVzdCAiY29uZmlnIHNldHRpbmcgYWN0aW9u
X2Rpc3BhdGNoLmhvc3RzX3Jlc3BvbnNlX2FwcCBpcyBkZXByZWNhdGVkIiBk
bwogICAgIGFzc2VydF9kZXByZWNhdGVkIGRvCiAgICAgICBBY3Rpb25EaXNw
YXRjaDo6SG9zdEF1dGhvcml6YXRpb24ubmV3KEFwcCwgImV4YW1wbGUuY29t
IiwgLT4oZW52KSB7IHRydWUgfSkKLS0gCjIuMzAuMAoK

--000000000000611fde05c197d292--
