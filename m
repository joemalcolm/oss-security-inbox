X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7570" "Friday" "14" "May" "2021" "15:16:37" "-0400" "Ana McTaggart" "amctagga@redhat.com" nil "151" "[oss-security] CVE-2021-3531: Ceph: RGW unauthenticated denial of service" nil nil nil "5" nil nil (number mark "U       amctagga@red May 14  151/7570  " thread-indent "\"[oss-security] CVE-2021-3531: Ceph: RGW unauthenticated denial of service\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-3531: Ceph: RGW unauthenticated denial of service" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1993 invoked by uid 550); 14 May 2021 19:21:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32543 invoked from network); 14 May 2021 19:17:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621019813;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=KfRBh90JNOg+lJd02v/qsviYRA9Ci6kJ/burY06uW+w=;
	b=NpdJ+GYWfWffRpJL6t0VUKxK+WyrIZbj6xQcAYUKNTcfSJbqxo01ktrJi0jRgYAn4QBVUu
	19IP9BtTtNKJya7SaVQ757wam5Jr0AzKGokjG3tWnbH9U0CGbw3lHwlj4WP3JGy2l22dbx
	yoR1X9cz+y4I1ZRVDHc/FVzmRrwF+NI=
X-MC-Unique: AsIggjk0OqaRwzppFSLqgA-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=G9zZLqjnTn/72fad/JST5Msn0anMmp8Jt5Bgsj04DS0=;
        b=c9BbMf1d1yRY/bZ+Xzn152Ffd0jp86H2JcRnpdzM966aMrC0qIxZbvmUxLKMcv7A3s
         VeA2j7uymk95KRpO9JDYXN0Ai4UPVQIOdVDJdNjD6wRj3qNT507/rt+8pf90pdS5LNod
         s2r+J9smeQSJwqv6B5eAbGSvXXkz8Jo/FoLarp0LF4ELLDGlCAWgR5OecUUkRfWRFnaj
         xBCxdG5BezuB+NY3Xx/pjXzJqoKW8Ff+bdkqKRlaYT7oBBRCfyN0K5hTCOQCrmVQ9m0X
         f5BS0e76tyZeZaGo+wvMJquWHZSY279JbNU2VCIuFVzc9sI+AJNLIFtYZBiIALmMZmjX
         ZkzA==
X-Gm-Message-State: AOAM530NDfFspFNdNGa9d87BPQZfDDxuu5Uvvo6R+byUdjqwvb65jgIz
	dFk7ZERHgzGGtX8Da8XspglSKDiwc+MiXQGuaW9G0sSznkcGmZiP8W38TQXojlcOD2CsMkbDUXs
	lSmhOA5gJAUdWi3M5gMJ2niDAodiD+a5ozmfuZrm1XXWh
X-Received: by 2002:a37:9c4a:: with SMTP id f71mr44365345qke.315.1621019808722;
        Fri, 14 May 2021 12:16:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyBxei5glfN7iuQap+xuJHRVC7SHcx2PgYNDhgA/eMyHjpcNFAKQVF5WrSxNUEI6sEaRdhKt0ViRVTNiDLlfGo=
X-Received: by 2002:a37:9c4a:: with SMTP id f71mr44365329qke.315.1621019808482;
 Fri, 14 May 2021 12:16:48 -0700 (PDT)
MIME-Version: 1.0
From: Ana McTaggart <amctagga@redhat.com>
Date: Fri, 14 May 2021 15:16:37 -0400
Message-ID: <CABBoStjJjmxfF-4OLiBq4D_uJ4LuUqrxftAeh5UCxntLsyoshQ@mail.gmail.com>
To: oss-security@lists.openwall.com, felix.huettner@mail.schwarz
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=amctagga@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="000000000000dc42cb05c24f1518"
Subject: [oss-security] CVE-2021-3531: Ceph: RGW unauthenticated denial of service

--000000000000dc42cb05c24f1518
Content-Type: multipart/alternative; boundary="000000000000dc42c905c24f1516"

--000000000000dc42c905c24f1516
Content-Type: text/plain; charset="UTF-8"

Hello,
A flaw was found in the Red Hat Ceph Storage RGW. When processing a GET
Request for a swift URL that ends with two slashes it can cause the rgw to
crash, resulting in a denial of service.

We have assigned it a CVE of CVE-2021-3531 and a patch is attached.

Fixes may be found here:

Nautilus:
https://github.com/ceph/ceph/commit/f44a8ae8aa27ecef69528db9aec220f12492810e
Octopus:
https://github.com/ceph/ceph/commit/b87e64e3206210580f4a6df2d77f9ae3f1033039
Pacific:
https://github.com/ceph/ceph/commit/bf06990ab41d7ac299e4441ad9cd434e926a18e7

Ana McTaggart

Red Hat Product Security

Red Hat Remote <https://www.redhat.com>


secalert@redhat.com for urgent response


amct@redhat.com


M: +1 (774)279-0791 <7742790791>     IM: amctagga


Pronouns:They/Them/Theirs

--000000000000dc42c905c24f1516
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div>A flaw was found in the Red Hat Ceph=
 Storage RGW. When processing a GET Request for a swift URL that ends with =
two slashes it can cause the rgw to crash, resulting in a denial of service=
.=C2=A0 <br></div><div><br></div><div><div>We have assigned it a CVE of CVE=
-2021-3531 and a patch is attached. <br></div><div><br></div><div>Fixes may=
 be found here:</div><div></div><div><br></div><div><div>Nautilus: <a href=
=3D"https://github.com/ceph/ceph/commit/f44a8ae8aa27ecef69528db9aec220f1249=
2810e">https://github.com/ceph/ceph/commit/f44a8ae8aa27ecef69528db9aec220f1=
2492810e</a></div><div>Octopus: <a href=3D"https://github.com/ceph/ceph/com=
mit/b87e64e3206210580f4a6df2d77f9ae3f1033039">https://github.com/ceph/ceph/=
commit/b87e64e3206210580f4a6df2d77f9ae3f1033039</a></div><div>Pacific: <a h=
ref=3D"https://github.com/ceph/ceph/commit/bf06990ab41d7ac299e4441ad9cd434e=
926a18e7">https://github.com/ceph/ceph/commit/bf06990ab41d7ac299e4441ad9cd4=
34e926a18e7</a></div></div></div><div><div dir=3D"ltr" data-smartmail=3D"gm=
ail_signature"><div dir=3D"ltr"><p style=3D"font-weight:bold;margin:0px;pad=
ding:0px;font-size:14px;text-transform:capitalize;font-family:&quot;RedHatT=
ext&quot;,sans-serif">
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
none" target=3D"_blank">+1 (774)279-0791</a>  =C2=A0 =C2=A0</span>
      <span>IM: <span>amctagga</span></span></span></p><p style=3D"font-wei=
ght:normal;margin:0px;font-size:12px;font-family:&quot;RedHatText&quot;,san=
s-serif"><span style=3D"font-family:monospace"><span><span></span></span></=
span><br><span style=3D"font-family:monospace"><span><span><span style=3D"f=
ont-family:monospace"></span></span></span></span></p><p style=3D"font-weig=
ht:normal;margin:0px;font-size:12px;font-family:&quot;RedHatText&quot;,sans=
-serif">Pronouns:They/Them/Theirs</p>
    <p></p></div></div></div></div></div>

--000000000000dc42c905c24f1516--

--000000000000dc42cb05c24f1518
Content-Type: application/x-patch; 
	name="0001-rgw-sanitize-r-in-s3-CORSConfiguration-s-ExposeHeade.patch"
Content-Disposition: attachment; 
	filename="0001-rgw-sanitize-r-in-s3-CORSConfiguration-s-ExposeHeade.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_koonx2x20>
X-Attachment-Id: f_koonx2x20

RnJvbSA0MmUxNWMyZWQ5YzY3NTJkYmY4Y2NhNGRiNTM2N2Y5Y2M0NWRkYjYx
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQ0KRnJvbTogQ2FzZXkgQm9kbGV5
IDxjYm9kbGV5QHJlZGhhdC5jb20+DQpEYXRlOiBUdWUsIDQgTWF5IDIwMjEg
MDg6MzI6NTggLTA0MDANClN1YmplY3Q6IFtQQVRDSF0gcmd3OiBzYW5pdGl6
ZSBcciBpbiBzMyBDT1JTQ29uZmlndXJhdGlvbidzIEV4cG9zZUhlYWRlcg0K
DQpmb2xsb3dzIHVwIG9uIDE1MjRkM2MwYzVjYjExNzc1MzEzZWExZTJiYjM2
YTkzMjU3OTQ3ZjIgdG8gZXNjYXBlIFxyIGFzDQp3ZWxsDQoNCkZpeGVzOiBD
VkUtMjAyMS0zNTI0DQoNClJlcG9ydGVkLWJ5OiBTZXJnZXkgQm9icm92IDxT
ZXJnZXkuQm9icm92QGthc3BlcnNreS5jb20+DQpTaWduZWQtb2ZmLWJ5OiBD
YXNleSBCb2RsZXkgPGNib2RsZXlAcmVkaGF0LmNvbT4NCi0tLQ0KIHNyYy9y
Z3cvcmd3X2NvcnMuY2MgfCA1ICsrKy0tDQogMSBmaWxlIGNoYW5nZWQsIDMg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBh
L3NyYy9yZ3cvcmd3X2NvcnMuY2MgYi9zcmMvcmd3L3Jnd19jb3JzLmNjDQpp
bmRleCA5NGQwOGY3YWUzLi4zZmE2MDBhZDFkIDEwMDY0NA0KLS0tIGEvc3Jj
L3Jndy9yZ3dfY29ycy5jYw0KKysrIGIvc3JjL3Jndy9yZ3dfY29ycy5jYw0K
QEAgLTE0OCw4ICsxNDgsOSBAQCB2b2lkIFJHV0NPUlNSdWxlOjpmb3JtYXRf
ZXhwX2hlYWRlcnMoc3RyaW5nJiBzKSB7DQogICAgIGlmIChzLmxlbmd0aCgp
ID4gMCkNCiAgICAgICBzLmFwcGVuZCgiLCIpOw0KICAgICAvLyB0aGVzZSB2
YWx1ZXMgYXJlIHNlbnQgdG8gY2xpZW50cyBpbiBhICdBY2Nlc3MtQ29udHJv
bC1FeHBvc2UtSGVhZGVycycNCi0gICAgLy8gcmVzcG9uc2UgaGVhZGVyLCBz
byB3ZSBlc2NhcGUgJ1xuJyB0byBhdm9pZCBoZWFkZXIgaW5qZWN0aW9uDQot
ICAgIGJvb3N0OjpyZXBsYWNlX2FsbF9jb3B5KHN0ZDo6YmFja19pbnNlcnRl
cihzKSwgaGVhZGVyLCAiXG4iLCAiXFxuIik7DQorICAgIC8vIHJlc3BvbnNl
IGhlYWRlciwgc28gd2UgZXNjYXBlICdcbicgYW5kICdccicgdG8gYXZvaWQg
aGVhZGVyIGluamVjdGlvbg0KKyAgICBzdGQ6OnN0cmluZyB0bXAgPSBib29z
dDo6cmVwbGFjZV9hbGxfY29weShoZWFkZXIsICJcbiIsICJcXG4iKTsNCisg
ICAgYm9vc3Q6OnJlcGxhY2VfYWxsX2NvcHkoc3RkOjpiYWNrX2luc2VydGVy
KHMpLCB0bXAsICJcciIsICJcXHIiKTsNCiAgIH0NCiB9DQoNCi0tIA0KMi4z
MC4yDQo=

--000000000000dc42cb05c24f1518--

