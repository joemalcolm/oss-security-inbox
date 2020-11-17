X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["19503" "Tuesday" "17" "November" "2020" "09:10:00" "-0500" "Ana McTaggart" "amctagga@redhat.com" "<CABBoStiTED9CRxFBD=Y521XyD=O5EU6Bh6gv1GohAsR2idhqyg@mail.gmail.com>" "352" "[oss-security] CVE-2020-25677 ceph: CEPHX_V2 replay attack protection lost" nil nil nil "11" "2020111714:10:00" "[oss-security] CVE-2020-25677 ceph: CEPHX_V2 replay attack protection lost" (number mark "U       amctagga@red Nov 17  352/19503 " thread-indent "\"[oss-security] CVE-2020-25677 ceph: CEPHX_V2 replay attack protection lost\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-25677 ceph: CEPHX_V2 replay attack protection lost" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5694 invoked by uid 550); 17 Nov 2020 14:25:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32203 invoked from network); 17 Nov 2020 14:10:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1605622216;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=JYzN8aPeBLiXC8Z34jyqYmHCv/hnO7LMGNGHjuRnW/4=;
	b=KkLWmoEoy/AdmRxwM0KII80kIWeo5WEYD91r+b6S4IahE7CRaDzz5QVUGRP3kzsvh5oXuG
	1PhCLx5ATbO7kiZpb8EJInu6KkKDWwextmvC/UlBzPTc0x7KgpTJzzLZOVnA8Lq+os78B7
	OFec+66yGrwF9p0RbckrsATZ9e8Z128=
X-MC-Unique: 8aI_--RwPU-y5JAUuF5QBw-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=yyzXxa1RPc6nBhPrWATC0gCwBHCw65bZNZTm43FZPjs=;
        b=HOEx88kntAzTIKEHwj87T3du7rcJWflI9tO7pRN9yKF52wK25uPTSA008U/MZxI4CA
         3Bf9hkoKrM9L4ZC5kcx9B5MfoWM8RDfrWXiqPwXzACcdVcGnuoAqpVIuPlBtkjUrrUrt
         GjLFjoSsYSZ0Qw92I+RzfpIb8++CjdAOAUE+xnvskwN2R4hZuk+LBUDvKwVPxfEIlxSQ
         2Lyo7CnV0fbHd4L2JOdB3UNfrtF5OlSYcnrMuTD8wYsgBYt91gUE9aPpDvNpV+uopqxh
         1woAIXDBtUiO2l/udovJTvHY1h1PlrAyV0eTrWJZcwIvE+NYcc8Yf7YHarY1eFCErosg
         fMxg==
X-Gm-Message-State: AOAM533sYnqa299IH+9jH6miwwBDX1ycxrsflv3zv+9urMO4wQF5svw/
	p+BD0vU7F/8pYYLTD0yl7uD6fIynlq/Mp51VjmzNCrnObnABx0fv4KU3xpcinxwnnP+ppuys4f0
	wlq8fsiHutlGoAIKtrFQLhHCGXhULc5pAJKmBY00/ASJW
X-Received: by 2002:a05:6602:2407:: with SMTP id s7mr11323369ioa.79.1605622208937;
        Tue, 17 Nov 2020 06:10:08 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwcEKcXnOY8edkOUAvro5wZrN/U5Sky7hz68cD2520CueqQPj1LlYp3ASWKIUNmHhmSxHPvGW01SRmL+kW7XzA=
X-Received: by 2002:a05:6602:2407:: with SMTP id s7mr11323348ioa.79.1605622208547;
 Tue, 17 Nov 2020 06:10:08 -0800 (PST)
MIME-Version: 1.0
From: Ana McTaggart <amctagga@redhat.com>
Date: Tue, 17 Nov 2020 09:10:00 -0500
Message-ID: <CABBoStiTED9CRxFBD=Y521XyD=O5EU6Bh6gv1GohAsR2idhqyg@mail.gmail.com>
To: Ilya Dryomov <idryomov@redhat.com>, oss-security@lists.openwall.com
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=amctagga@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="00000000000064100305b44e0d84"
Subject: [oss-security] CVE-2020-25677 ceph: CEPHX_V2 replay attack protection lost

--00000000000064100305b44e0d84
Content-Type: multipart/alternative; boundary="00000000000064100105b44e0d82"

--00000000000064100105b44e0d82
Content-Type: text/plain; charset="UTF-8"

Dear all,
cephx authentication protocol does not verify ceph clients correctly, and
is vulnerable to replay attacks in nautilus and later. An attacker with
access to the Ceph cluster network can use this vulnerability to
authenticate with ceph service, via a packet sniffer. This allows them to
perform actions allowed by the ceph service. This is a reintroduction of
CVE-2018-1128[1], affecting msgr2 protocol. msgr 2 protocol is used for all
communication except for older clients that do not support msgr2 protocol.
msgr1 protocol is not affected.

This was introduced in commit to msgr2 321548010578 ("mon/MonClient: skip
CEPHX_V2 challenge if client doesn't support it") , due to commit
c58c5754dfd2 ("msg/async/ProtocolV1: use AuthServer and AuthClient") . This
results in nautilus and ceph being affected because commit c58c5754dfd2
wasn't backported to nautilus, and although msgr1 isn't affected in
nautilus, msgr 2 is the default. This made it so authorizer challenges
could be skipped for peers which did not support CEPHX_V2, unfortunately
making it so authorizer challenges are skipped for all peers in both msgr 1
and msgr2 cases, disabling the protection that was put in place in commit
f80b848d3f83 ("auth/cephx: add authorizer challenge", CVE-2018-1128).

Proposed Patch:
See attached.

We have assigned it a CVE of CVE-2020-25677 at Red Hat.

Credits to Ilya Dryomov

[1]https://www.cvedetails.com/cve/CVE-2018-1128/

Ana McTaggart

Red Hat Product Security

Red Hat Remote <https://www.redhat.com>


secalert@redhat.com for urgent response


amct@redhat.com


M: 7742790791     IM: amctagga


Pronouns:They/Them/Theirs

--00000000000064100105b44e0d82
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Dear all,</div><div>cephx authentication protocol doe=
s not verify ceph clients correctly, and is vulnerable to replay attacks in=
 nautilus and later. An attacker with access to the Ceph cluster network ca=
n use this vulnerability to authenticate with ceph service, via a packet sn=
iffer. This allows them to perform actions allowed by the ceph service. Thi=
s is a reintroduction of CVE-2018-1128[1], affecting msgr2 protocol. msgr 2=
 protocol is used for all communication except for older clients that do no=
t support msgr2 protocol. msgr1 protocol is not affected. <br><br>This was =
introduced in commit to msgr2 321548010578 (&quot;mon/MonClient: skip CEPHX=
_V2 challenge if client doesn&#39;t support it&quot;) , due to commit c58c5=
754dfd2 (&quot;msg/async/ProtocolV1: use AuthServer and AuthClient&quot;) .=
 This results in nautilus and ceph being affected because commit c58c5754df=
d2 wasn&#39;t backported to nautilus, and although msgr1 isn&#39;t affected=
 in nautilus, msgr 2 is the default. This made it so authorizer challenges =
could be skipped for peers which did not support CEPHX_V2, unfortunately ma=
king it so authorizer challenges are skipped for all peers in both msgr 1 a=
nd msgr2 cases, disabling the protection that was put in place in commit f8=
0b848d3f83 (&quot;auth/cephx: add authorizer challenge&quot;, CVE-2018-1128=
).<br></div><div><br></div><div>Proposed Patch:</div><div>See attached.<br>=
</div><div><br></div><div><div>We have assigned it a CVE of  CVE-2020-25677=
 at Red Hat. <br></div><div><br></div><div>Credits to Ilya Dryomov</div><di=
v><br></div></div><div>[1]<a href=3D"https://www.cvedetails.com/cve/CVE-201=
8-1128/" target=3D"_blank">https://www.cvedetails.com/cve/CVE-2018-1128/</a=
></div><div><div dir=3D"ltr" data-smartmail=3D"gmail_signature"><div dir=3D=
"ltr"><p style=3D"font-weight:bold;margin:0px;padding:0px;font-size:14px;te=
xt-transform:capitalize;font-family:&quot;RedHatText&quot;,sans-serif">
          <span style=3D"font-family:monospace"><span>Ana McTaggart<br></sp=
an></span></p><p style=3D"font-weight:bold;margin:0px;padding:0px;font-size=
:14px;text-transform:capitalize"><span style=3D"font-family:monospace"><spa=
n style=3D"font-weight:normal">Red Hat Product Security</span><br></span></=
p><p style=3D"font-weight:bold;margin:0px;padding:0px;font-size:14px;text-t=
ransform:capitalize"><span style=3D"font-family:monospace"><span style=3D"c=
olor:rgb(170,170,170);margin:0px"></span></span>
        </p><span style=3D"font-family:monospace">
=20=20=20=20=20=20=20=20
=20=20=20=20=20=20=20=20
        </span><p style=3D"font-weight:normal;margin:0px 0px 4px;font-size:=
12px">
          <span style=3D"font-family:monospace"><a style=3D"color:rgb(0,136=
,206);font-size:12px;margin:0px;text-decoration:none" href=3D"https://www.r=
edhat.com" target=3D"_blank">Red Hat <span>Remote</span></a></span>
        </p><span style=3D"font-family:monospace">
    </span><div style=3D"margin-bottom:4px">
      <span style=3D"font-family:monospace">
        <p style=3D"font-weight:normal;margin:0px;font-size:12px;font-famil=
y:&quot;RedHatText&quot;,sans-serif"><span style=3D"font-family:monospace">=
</span></p><p style=3D"font-weight:normal;margin:0px;font-size:12px;font-fa=
mily:&quot;RedHatText&quot;,sans-serif"><br><span style=3D"font-family:mono=
space"><span><a href=3D"mailto:secalert@redhat.com" target=3D"_blank">secal=
ert@redhat.com</a> for urgent response</span></span></p><p style=3D"font-we=
ight:normal;margin:0px;font-size:12px;font-family:&quot;RedHatText&quot;,sa=
ns-serif"><span style=3D"font-family:monospace"><span><br></span></span></p=
></span><p></p><p style=3D"font-weight:normal;margin:0px;font-size:12px;fon=
t-family:&quot;RedHatText&quot;,sans-serif"><span style=3D"font-family:mono=
space"><span style=3D"margin:0px;padding:0px"><a style=3D"color:rgb(0,0,0);=
font-size:12px;margin:0px;text-decoration:none" href=3D"mailto:amct@redhat.=
com" target=3D"_blank">amct@redhat.com</a>=C2=A0 =C2=A0</span>
      <span><br></span></span></p><p style=3D"font-weight:normal;margin:0px=
;font-size:12px;font-family:&quot;RedHatText&quot;,sans-serif"><br><span st=
yle=3D"font-family:monospace"><span></span></span></p><p style=3D"font-weig=
ht:normal;margin:0px;font-size:12px;font-family:&quot;RedHatText&quot;,sans=
-serif"><span style=3D"font-family:monospace"><span>M: <a href=3D"tel:77427=
90791" style=3D"color:rgb(0,0,0);font-size:12px;margin:0px;text-decoration:=
none" target=3D"_blank">7742790791</a>  =C2=A0 =C2=A0</span>
      <span>IM: <span>amctagga</span></span></span></p><p style=3D"font-wei=
ght:normal;margin:0px;font-size:12px;font-family:&quot;RedHatText&quot;,san=
s-serif"><span style=3D"font-family:monospace"><span><span></span></span></=
span><br><span style=3D"font-family:monospace"><span><span><span style=3D"f=
ont-family:monospace"></span></span></span></span></p><p style=3D"font-weig=
ht:normal;margin:0px;font-size:12px;font-family:&quot;RedHatText&quot;,sans=
-serif">Pronouns:They/Them/Theirs</p>
    <p></p></div></div></div></div></div>

--00000000000064100105b44e0d82--

--00000000000064100305b44e0d84
Content-Type: application/x-patch; 
	name="0003-mon-MonClient-bring-back-CEPHX_V2-authorizer-challen.patch"
Content-Disposition: attachment; 
	filename="0003-mon-MonClient-bring-back-CEPHX_V2-authorizer-challen.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_khl3ju5o0>
X-Attachment-Id: f_khl3ju5o0

RnJvbSAyOTI3ZmQ5MWQ0MWU1MDUyMzdjYzczZjk3MDBlNWM2YTYzZTVjYjRm
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBJbHlhIERyeW9tb3Yg
PGlkcnlvbW92QGdtYWlsLmNvbT4KRGF0ZTogRnJpLCAxNiBPY3QgMjAyMCAx
Mjo1Nzo1MCArMDIwMApTdWJqZWN0OiBbUEFUQ0ggMy8zXSBtb24vTW9uQ2xp
ZW50OiBicmluZyBiYWNrIENFUEhYX1YyIGF1dGhvcml6ZXIgY2hhbGxlbmdl
cwoKQ29tbWl0IGM1OGM1NzU0ZGZkMiAoIm1zZy9hc3luYy9Qcm90b2NvbFYx
OiB1c2UgQXV0aFNlcnZlciBhbmQKQXV0aENsaWVudCIpIGludHJvZHVjZWQg
YSBiYWNrd2FyZHMgY29tcGF0aWJpbGl0eSBpc3N1ZSBpbnRvIG1zZ3IxLgpU
byBmaXggaXQsIGNvbW1pdCAzMjE1NDgwMTA1NzggKCJtb24vTW9uQ2xpZW50
OiBza2lwIENFUEhYX1YyCmNoYWxsZW5nZSBpZiBjbGllbnQgZG9lc24ndCBz
dXBwb3J0IGl0Iikgc2V0IG91dCB0byBza2lwIGF1dGhvcml6ZXIKY2hhbGxl
bmdlcyBmb3IgcGVlcnMgdGhhdCBkb24ndCBzdXBwb3J0IENFUEhYX1YyLiAg
SG93ZXZlciwgaXQKbWFkZSBpdCBzbyB0aGF0IGF1dGhvcml6ZXIgY2hhbGxl
bmdlcyBhcmUgc2tpcHBlZCBmb3IgYWxsIHBlZXJzIGluCmJvdGggbXNncjEg
YW5kIG1zZ3IyIGNhc2VzLCBlZmZlY3RpdmVseSBkaXNhYmxpbmcgdGhlIHBy
b3RlY3Rpb24KYWdhaW5zdCByZXBsYXkgYXR0YWNrcyB0aGF0IHdhcyBwdXQg
aW4gcGxhY2UgaW4gY29tbWl0IGY4MGI4NDhkM2Y4MwooImF1dGgvY2VwaHg6
IGFkZCBhdXRob3JpemVyIGNoYWxsZW5nZSIsIENWRS0yMDE4LTExMjgpLgoK
VGhpcyBpcyBiZWNhdXNlIGNvbi0+Z2V0X2ZlYXR1cmVzKCkgYWx3YXlzIHJl
dHVybnMgMCBhdCB0aGF0CnBvaW50LiAgSW4gbXNncjEgY2FzZSwgdGhlIHBl
ZXIgc2hhcmVzIGl0cyBmZWF0dXJlcyBhbG9uZyB3aXRoIHRoZQphdXRob3Jp
emVyLCBidXQgd2hpbGUgdGhleSBhcmUgYXZhaWxhYmxlIGluIGNvbm5lY3Rf
bXNnLmZlYXR1cmVzIHRoZXkKYXJlbid0IGFzc2lnbmVkIHRvIGNvbiB1bnRp
bCBQcm90b2NvbFYxOjpvcGVuKCkuICBJbiBtc2dyMiBjYXNlLCB0aGUKcGVl
ciBkb2Vzbid0IHNoYXJlIGl0cyBmZWF0dXJlcyB1bnRpbCBtdWNoIGxhdGVy
IChpbiBDTElFTlRfSURFTlQKZnJhbWUsIGkuZS4gYWZ0ZXIgdGhlIGF1dGhl
bnRpY2F0aW9uIHBoYXNlKS4gIFRoZSByZXN1bHQgaXMgdGhhdAohQ0VQSFhf
VjIgYnJhbmNoIGlzIHRha2VuIGluIGFsbCBjYXNlcyBhbmQgcmVwbGF5IGF0
dGFjayBwcm90ZWN0aW9uCmlzIGxvc3QuCgpPbmx5IGNsdXN0ZXJzIHdpdGgg
Y2VwaHhfc2VydmljZV9yZXF1aXJlX3ZlcnNpb24gc2V0IHRvIDIgb24gdGhl
CnNlcnZpY2UgZGFlbW9ucyB3b3VsZCBub3QgYmUgc2lsZW50bHkgZG93bmdy
YWRlZC4gIEJ1dCwgc2luY2UgdGhlCmRlZmF1bHQgaXMgMSBhbmQgdGhlcmUg
YXJlIG5vIHJlcG9ydHMgb2YgbG9vcGluZyBvbiBCQURBVVRIT1JJWkVSCmZh
dWx0cywgSSdtIHByZXR0eSBzdXJlIHRoYXQgbm8gb25lIGhhcyBldmVyIGRv
bmUgdGhhdC4gIE5vdGUgdGhhdApjZXBoeF9yZXF1aXJlX3ZlcnNpb24gc2V0
IHRvIDIgd291bGQgaGF2ZSBubyBlZmZlY3QgZXZlbiB0aG91Z2ggaXQKaXMg
c3VwcG9zZWQgdG8gYmUgc3Ryb25nZXIgdGhhbiBjZXBoeF9zZXJ2aWNlX3Jl
cXVpcmVfdmVyc2lvbgpiZWNhdXNlIE1vbkNsaWVudDo6aGFuZGxlX2F1dGhf
cmVxdWVzdCgpIGRpZG4ndCBjaGVjayBpdC4KClRvIGZpeDoKCi0gZm9yIG1z
Z3IxLCBjaGVjayBjb25uZWN0X21zZy5mZWF0dXJlcyAoYXMgd2FzIGRvbmUg
YmVmb3JlIGNvbW1pdAogIGM1OGM1NzU0ZGZkMikgYW5kIGNoYWxsZW5nZSBp
ZiBDRVBIWF9WMiBpcyBzdXBwb3J0ZWQuICBUb2dldGhlcgogIHdpdGggdHdv
IHByZWNlZGluZyBwYXRjaGVzIHRoYXQgcmVzdXJyZWN0IHByb3BlciBjZXBo
eF8qIG9wdGlvbgogIGhhbmRsaW5nIGluIG1zZ3IxLCB0aGlzIGNvdmVycyBi
b3RoICJJIHdhbnQgb2xkIGNsaWVudHMgdG8gd29yayIKICBhbmQgIkkgd2lz
aCB0byByZXF1aXJlIGJldHRlciBhdXRoZW50aWNhdGlvbiIgdXNlIGNhc2Vz
LgoKLSBmb3IgbXNncjIsIGRvbid0IGNoZWNrIGFueXRoaW5nIGFuZCBhbHdh
eXMgY2hhbGxlbmdlLiAgQ0VQSFhfVjIKICBwcmVkYXRlcyBtc2dyMiwgYW55
b25lIHNwZWFraW5nIG1zZ3IyIG11c3Qgc3VwcG9ydCBpdC4KClNpZ25lZC1v
ZmYtYnk6IElseWEgRHJ5b21vdiA8aWRyeW9tb3ZAZ21haWwuY29tPgooY2hl
cnJ5IHBpY2tlZCBmcm9tIGNvbW1pdCA0YTgyYzcyZTNiZGRkY2I2MjU5MzNl
ODNhZjhiNTBhNDQ0Yjk2MWYxKQoKQ29uZmxpY3RzOgoJc3JjL21zZy9hc3lu
Yy9Qcm90b2NvbFYxLmNjIFsgY29tbWl0IGM1OGM1NzU0ZGZkMgoJICAoIm1z
Zy9hc3luYy9Qcm90b2NvbFYxOiB1c2UgQXV0aFNlcnZlciBhbmQgQXV0aENs
aWVudCIpIG5vdAoJICBpbiBuYXV0aWx1cy4gIFRoaXMgbWVhbnMgdGhhdCBv
bmx5IG1zZ3IyIGlzIGFmZmVjdGVkLCBzbyBkcm9wCgkgIFByb3RvY29sVjEu
Y2MgaHVuay4gIEFzIGEgcmVzdWx0LCBza2lwX2F1dGhvcml6ZXJfY2hhbGxl
bmdlIGlzCgkgIG5ldmVyIHNldCwgYnV0IHRoaXMgaXMgZmluZSBiZWNhdXNl
IG1zZ3IxIHN0aWxsIHVzZXMgb2xkIG1zXyoKCSAgYXV0aCBtZXRob2RzIGFu
ZCB0ZXN0cyBDRVBIWF9WMiBhcHByb3ByaWF0ZWx5LiBdCi0tLQogc3JjL2F1
dGgvQXV0aC5oICAgICAgfCAzICsrKwogc3JjL21vbi9Nb25DbGllbnQuY2Mg
fCA5ICsrLS0tLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlvbnMo
KyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL2F1dGgvQXV0
aC5oIGIvc3JjL2F1dGgvQXV0aC5oCmluZGV4IDg0Y2Q1YjNkMDFkYy4uN2Vj
MjY0NmVhOGMxIDEwMDY0NAotLS0gYS9zcmMvYXV0aC9BdXRoLmgKKysrIGIv
c3JjL2F1dGgvQXV0aC5oCkBAIC0xOTIsNiArMTkyLDkgQEAgc3RydWN0IEF1
dGhDb25uZWN0aW9uTWV0YSB7CiAKICAgc3RkOjp1bmlxdWVfcHRyPEF1dGhB
dXRob3JpemVyPiBhdXRob3JpemVyOwogICBzdGQ6OnVuaXF1ZV9wdHI8QXV0
aEF1dGhvcml6ZXJDaGFsbGVuZ2U+IGF1dGhvcml6ZXJfY2hhbGxlbmdlOwor
CisgIC8vLzwgc2V0IGlmIG1zZ3IxIHBlZXIgZG9lc24ndCBzdXBwb3J0IENF
UEhYX1YyCisgIGJvb2wgc2tpcF9hdXRob3JpemVyX2NoYWxsZW5nZSA9IGZh
bHNlOwogfTsKIAogLyoKZGlmZiAtLWdpdCBhL3NyYy9tb24vTW9uQ2xpZW50
LmNjIGIvc3JjL21vbi9Nb25DbGllbnQuY2MKaW5kZXggYzhjMTgyYWFhOTFj
Li44YTlmYzhjMmRlZTkgMTAwNjQ0Ci0tLSBhL3NyYy9tb24vTW9uQ2xpZW50
LmNjCisrKyBiL3NyYy9tb24vTW9uQ2xpZW50LmNjCkBAIC0xNDI5LDEzICsx
NDI5LDggQEAgaW50IE1vbkNsaWVudDo6aGFuZGxlX2F1dGhfcmVxdWVzdCgK
ICAgfQogCiAgIGF1dG8gYWMgPSAmYXV0aF9tZXRhLT5hdXRob3JpemVyX2No
YWxsZW5nZTsKLSAgaWYgKCFIQVZFX0ZFQVRVUkUoY29uLT5nZXRfZmVhdHVy
ZXMoKSwgQ0VQSFhfVjIpKSB7Ci0gICAgaWYgKGNjdC0+X2NvbmYtPmNlcGh4
X3NlcnZpY2VfcmVxdWlyZV92ZXJzaW9uID49IDIpIHsKLSAgICAgIGxkb3V0
KGNjdCwxMCkgPDwgX19mdW5jX18gPDwgIiBjbGllbnQgbWlzc2luZyBDRVBI
WF9WMiAoIgotCQkgICAgPDwgImNlcGh4X3NlcnZpY2VfcmVxdXJlX3ZlcnNp
b24gPSAiCi0JCSAgICA8PCBjY3QtPl9jb25mLT5jZXBoeF9zZXJ2aWNlX3Jl
cXVpcmVfdmVyc2lvbiA8PCAiKSIgPDwgZGVuZGw7Ci0gICAgICByZXR1cm4g
LUVBQ0NFUzsKLSAgICB9CisgIGlmIChhdXRoX21ldGEtPnNraXBfYXV0aG9y
aXplcl9jaGFsbGVuZ2UpIHsKKyAgICBsZG91dChjY3QsIDEwKSA8PCBfX2Z1
bmNfXyA8PCAiIHNraXBwaW5nIGNoYWxsZW5nZSBvbiAiIDw8IGNvbiA8PCBk
ZW5kbDsKICAgICBhYyA9IG51bGxwdHI7CiAgIH0KIAotLSAKMi4xOS4yCgo=

--00000000000064100305b44e0d84
Content-Type: application/x-patch; 
	name="0001-msg-async-ProtocolV1-resurrect-include-MGR-as-servic.patch"
Content-Disposition: attachment; 
	filename="0001-msg-async-ProtocolV1-resurrect-include-MGR-as-servic.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_khl3jv9g1>
X-Attachment-Id: f_khl3jv9g1

RnJvbSBiYjVkM2Q1OGJmY2FlOTZkMmU1Zjc5NmVhYTc0ZmMwOTg3Zjc5ZTc3
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBJbHlhIERyeW9tb3Yg
PGlkcnlvbW92QGdtYWlsLmNvbT4KRGF0ZTogRnJpLCAxNiBPY3QgMjAyMCAx
MTozMzozMiArMDIwMApTdWJqZWN0OiBbUEFUQ0ggMS8zXSBtc2cvYXN5bmMv
UHJvdG9jb2xWMTogcmVzdXJyZWN0ICJpbmNsdWRlIE1HUiBhcyBzZXJ2aWNl
CiB3aGVuIGFwcGx5aW5nIGNlcGh4IHNldHRpbmdzIgoKVGhpcyB3YXMgYWRk
ZWQgaW4gY29tbWl0IDBlYzdkNmJiYzRhZiAoIm1zZy9hc3luYyxzaW1wbGU6
IGluY2x1ZGUgTUdSCmFzIHNlcnZpY2Ugd2hlbiBhcHBseWluZyBjZXBoeCBz
ZXR0aW5ncyIpIGFuZCBpbmFkdmVydGVudGx5IGRyb3BwZWQgaW4KY29tbWl0
IGU2ZjA0M2Y3ZDJkYyAoIm1zZ3IvYXN5bmM6IGh1Z2UgcmVmYWN0b3Jpbmcg
b2YgcHJvdG9jb2wgVjEiKS4KQXMgYSByZXN1bHQsIG1nciBkYWVtb25zIGFy
ZSBtaXNjYXRlZ29yaXplZCBhcyBjbGllbnRzIHdoZW4gZW5mb3JjaW5nCmNl
cGh4XypyZXF1aXJlX3NpZ25hdHVyZXMgb3B0aW9ucy4KClNpZ25lZC1vZmYt
Ynk6IElseWEgRHJ5b21vdiA8aWRyeW9tb3ZAZ21haWwuY29tPgooY2hlcnJ5
IHBpY2tlZCBmcm9tIGNvbW1pdCA5NDllMmU1OTVlZGE1NTNhYTY4ZjY5N2Nl
ZTFkY2ZmZjNjMDljZjNmKQotLS0KIHNyYy9tc2cvYXN5bmMvUHJvdG9jb2xW
MS5jYyB8IDMgKystCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL21zZy9hc3luYy9Q
cm90b2NvbFYxLmNjIGIvc3JjL21zZy9hc3luYy9Qcm90b2NvbFYxLmNjCmlu
ZGV4IGU3YzYyOTVjMTRmMi4uZjYxZWUxYWYwM2U2IDEwMDY0NAotLS0gYS9z
cmMvbXNnL2FzeW5jL1Byb3RvY29sVjEuY2MKKysrIGIvc3JjL21zZy9hc3lu
Yy9Qcm90b2NvbFYxLmNjCkBAIC0xOTM2LDcgKzE5MzYsOCBAQCBDdFB0ciBQ
cm90b2NvbFYxOjpoYW5kbGVfY29ubmVjdF9tZXNzYWdlXzIoKSB7CiAgIC8v
IHJlcXVpcmUgc2lnbmF0dXJlcyBmb3IgY2VwaHg/CiAgIGlmIChjb25uZWN0
X21zZy5hdXRob3JpemVyX3Byb3RvY29sID09IENFUEhfQVVUSF9DRVBIWCkg
ewogICAgIGlmIChjb25uZWN0aW9uLT5wZWVyX3R5cGUgPT0gQ0VQSF9FTlRJ
VFlfVFlQRV9PU0QgfHwKLSAgICAgICAgY29ubmVjdGlvbi0+cGVlcl90eXBl
ID09IENFUEhfRU5USVRZX1RZUEVfTURTKSB7CisgICAgICAgIGNvbm5lY3Rp
b24tPnBlZXJfdHlwZSA9PSBDRVBIX0VOVElUWV9UWVBFX01EUyB8fAorICAg
ICAgICBjb25uZWN0aW9uLT5wZWVyX3R5cGUgPT0gQ0VQSF9FTlRJVFlfVFlQ
RV9NR1IpIHsKICAgICAgIGlmIChjY3QtPl9jb25mLT5jZXBoeF9yZXF1aXJl
X3NpZ25hdHVyZXMgfHwKICAgICAgICAgICBjY3QtPl9jb25mLT5jZXBoeF9j
bHVzdGVyX3JlcXVpcmVfc2lnbmF0dXJlcykgewogICAgICAgICBsZG91dChj
Y3QsIDEwKQotLSAKMi4xOS4yCgo=

--00000000000064100305b44e0d84
Content-Type: application/x-patch; 
	name="0002-msg-async-ProtocolV1-resurrect-implement-cephx_-requ.patch"
Content-Disposition: attachment; 
	filename="0002-msg-async-ProtocolV1-resurrect-implement-cephx_-requ.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_khl3jwju2>
X-Attachment-Id: f_khl3jwju2

RnJvbSA0YzExMjAzMTIyZDcyOWM4MzJhNjQ1YzllM2Y1MDkyZGI0OTYzODQw
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBJbHlhIERyeW9tb3Yg
PGlkcnlvbW92QGdtYWlsLmNvbT4KRGF0ZTogRnJpLCAxNiBPY3QgMjAyMCAx
MTozNToyNyArMDIwMApTdWJqZWN0OiBbUEFUQ0ggMi8zXSBtc2cvYXN5bmMv
UHJvdG9jb2xWMTogcmVzdXJyZWN0ICJpbXBsZW1lbnQKIGNlcGh4XypyZXF1
aXJlX3ZlcnNpb24gb3B0aW9ucyIKClRoaXMgd2FzIGFkZGVkIGluIGNvbW1p
dCA5YmNiYzJhMzYyMWYgKCJtb24sbXNnOiBpbXBsZW1lbnQKY2VwaHhfKl9y
ZXF1aXJlX3ZlcnNpb24gb3B0aW9ucyIpIGFuZCBpbmFkdmVydGVudGx5IGRy
b3BwZWQgaW4KY29tbWl0IGU2ZjA0M2Y3ZDJkYyAoIm1zZ3IvYXN5bmM6IGh1
Z2UgcmVmYWN0b3Jpbmcgb2YgcHJvdG9jb2wgVjEiKS4KQXMgYSByZXN1bHQs
IHNlcnZpY2UgZGFlbW9ucyBkb24ndCBlbmZvcmNlIGNlcGh4X3JlcXVpcmVf
dmVyc2lvbgphbmQgY2VwaHhfY2x1c3Rlcl9yZXF1aXJlX3ZlcnNpb24gb3B0
aW9ucyBhbmQgY29ubmVjdGlvbnMgd2l0aG91dApDRVBIX0ZFQVRVUkVfQ0VQ
SFhfVjIgYXJlIGFsbG93ZWQgdGhyb3VnaC4KCihjZXBoeF9zZXJ2aWNlX3Jl
cXVpcmVfdmVyc2lvbiBlbmZvcmNlbWVudCB3YXMgYnJvdWdodCBiYWNrIGEK
eWVhciBsYXRlciBpbiBjb21taXQgMzIxNTQ4MDEwNTc4ICgibW9uL01vbkNs
aWVudDogc2tpcCBDRVBIWF9WMgpjaGFsbGVuZ2UgaWYgY2xpZW50IGRvZXNu
J3Qgc3VwcG9ydCBpdCIpLCBhbHRob3VnaCB0aGUgcGVlciBnZXRzClRBR19C
QURBVVRIT1JJWkVSIGluc3RlYWQgb2YgVEFHX0ZFQVRVUkVTLikKClJlc3Vy
cmVjdCB0aGUgb3JpZ2luYWwgYmVoYXZpb3VyOiBhbGwgY2VwaHhfKnJlcXVp
cmVfdmVyc2lvbgpvcHRpb25zIGFyZSBlbmZvcmNlZCBhbmQgdGhlIHBlZXIg
Z2V0cyBUQUdfRkVBVFVSRVMsIHNpZ25pZnlpbmcKdGhhdCBpdCBpcyBtaXNz
aW5nIGEgcmVxdWlyZWQgZmVhdHVyZS4KClNpZ25lZC1vZmYtYnk6IElseWEg
RHJ5b21vdiA8aWRyeW9tb3ZAZ21haWwuY29tPgooY2hlcnJ5IHBpY2tlZCBm
cm9tIGNvbW1pdCA2ZjVjNDE1MmNhMmM2NDIzZTY2NWNkZTIxOTZjNjMwMWY3
NjA0M2EyKQoKQ29uZmxpY3RzOgoJc3JjL21zZy9hc3luYy9Qcm90b2NvbFYx
LmNjIFsgZHJvcCBuYXV0aWx1cy1vbmx5IGNvbW1pdAoJICA4OWZmZWNlNDkw
OTcgKCJtc2cvYXN5bmMvUHJvdG9jb2xWMTogcmVxdWlyZSBDRVBIWF9WMiBp
ZgoJICBjZXBoeF9zZXJ2aWNlX3JlcXVpcmVfdmVyc2lvbiA+PSAyIikgXQot
LS0KIHNyYy9tc2cvYXN5bmMvUHJvdG9jb2xWMS5jYyB8IDE5ICsrKysrKysr
KysrKysrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCsp
LCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NyYy9tc2cvYXN5bmMv
UHJvdG9jb2xWMS5jYyBiL3NyYy9tc2cvYXN5bmMvUHJvdG9jb2xWMS5jYwpp
bmRleCBmNjFlZTFhZjAzZTYuLjlhN2FiOWQ0YjkwMyAxMDA2NDQKLS0tIGEv
c3JjL21zZy9hc3luYy9Qcm90b2NvbFYxLmNjCisrKyBiL3NyYy9tc2cvYXN5
bmMvUHJvdG9jb2xWMS5jYwpAQCAtMTk0Niw2ICsxOTQ2LDE0IEBAIEN0UHRy
IFByb3RvY29sVjE6OmhhbmRsZV9jb25uZWN0X21lc3NhZ2VfMigpIHsKICAg
ICAgICAgICAgIDw8IGRlbmRsOwogICAgICAgICBjb25uZWN0aW9uLT5wb2xp
Y3kuZmVhdHVyZXNfcmVxdWlyZWQgfD0gQ0VQSF9GRUFUVVJFX01TR19BVVRI
OwogICAgICAgfQorICAgICAgaWYgKGNjdC0+X2NvbmYtPmNlcGh4X3JlcXVp
cmVfdmVyc2lvbiA+PSAyIHx8CisgICAgICAgICAgY2N0LT5fY29uZi0+Y2Vw
aHhfY2x1c3Rlcl9yZXF1aXJlX3ZlcnNpb24gPj0gMikgeworICAgICAgICBs
ZG91dChjY3QsIDEwKQorICAgICAgICAgICAgPDwgX19mdW5jX18KKyAgICAg
ICAgICAgIDw8ICIgdXNpbmcgY2VwaHgsIHJlcXVpcmluZyBjZXBoeCB2MiBm
ZWF0dXJlIGJpdCBmb3IgY2x1c3RlciIKKyAgICAgICAgICAgIDw8IGRlbmRs
OworICAgICAgICBjb25uZWN0aW9uLT5wb2xpY3kuZmVhdHVyZXNfcmVxdWly
ZWQgfD0gQ0VQSF9GRUFUVVJFTUFTS19DRVBIWF9WMjsKKyAgICAgIH0KICAg
ICB9IGVsc2UgewogICAgICAgaWYgKGNjdC0+X2NvbmYtPmNlcGh4X3JlcXVp
cmVfc2lnbmF0dXJlcyB8fAogICAgICAgICAgIGNjdC0+X2NvbmYtPmNlcGh4
X3NlcnZpY2VfcmVxdWlyZV9zaWduYXR1cmVzKSB7CkBAIC0xOTU1LDkgKzE5
NjMsMTQgQEAgQ3RQdHIgUHJvdG9jb2xWMTo6aGFuZGxlX2Nvbm5lY3RfbWVz
c2FnZV8yKCkgewogICAgICAgICAgICAgPDwgZGVuZGw7CiAgICAgICAgIGNv
bm5lY3Rpb24tPnBvbGljeS5mZWF0dXJlc19yZXF1aXJlZCB8PSBDRVBIX0ZF
QVRVUkVfTVNHX0FVVEg7CiAgICAgICB9Ci0gICAgfQotICAgIGlmIChjY3Qt
Pl9jb25mLT5jZXBoeF9zZXJ2aWNlX3JlcXVpcmVfdmVyc2lvbiA+PSAyKSB7
Ci0gICAgICBjb25uZWN0aW9uLT5wb2xpY3kuZmVhdHVyZXNfcmVxdWlyZWQg
fD0gQ0VQSF9GRUFUVVJFX0NFUEhYX1YyOworICAgICAgaWYgKGNjdC0+X2Nv
bmYtPmNlcGh4X3JlcXVpcmVfdmVyc2lvbiA+PSAyIHx8CisgICAgICAgICAg
Y2N0LT5fY29uZi0+Y2VwaHhfc2VydmljZV9yZXF1aXJlX3ZlcnNpb24gPj0g
MikgeworICAgICAgICBsZG91dChjY3QsIDEwKQorICAgICAgICAgICAgPDwg
X19mdW5jX18KKyAgICAgICAgICAgIDw8ICIgdXNpbmcgY2VwaHgsIHJlcXVp
cmluZyBjZXBoeCB2MiBmZWF0dXJlIGJpdCBmb3Igc2VydmljZSIKKyAgICAg
ICAgICAgIDw8IGRlbmRsOworICAgICAgICBjb25uZWN0aW9uLT5wb2xpY3ku
ZmVhdHVyZXNfcmVxdWlyZWQgfD0gQ0VQSF9GRUFUVVJFTUFTS19DRVBIWF9W
MjsKKyAgICAgIH0KICAgICB9CiAgIH0KIAotLSAKMi4xOS4yCgo=

--00000000000064100305b44e0d84--

