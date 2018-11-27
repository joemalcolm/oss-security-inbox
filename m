X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["15373" "Tuesday" "27" "November" "2018" "16:06:36" "-0500" "=?utf-8?B?UmFmYWVsIE1lbmRvbsOnYSBGcmFuw6dh?=" "rafaelmfranca@gmail.com" "<bf67ba8b-e03f-424b-92ba-c32b01ab1c08@Spark>" "356" "[oss-security] [CVE-2018-16476] Broken Access Control vulnerability in Active Job" nil nil nil "11" "2018112721:06:36" "[oss-security] [CVE-2018-16476] Broken Access Control vulnerability in Active Job" (number mark "U       rafaelmfranc Nov 27  356/15373 " thread-indent "\"[oss-security] [CVE-2018-16476] Broken Access Control vulnerability in Active Job\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 2014 invoked by uid 550); 27 Nov 2018 21:13:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29897 invoked from network); 27 Nov 2018 21:06:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:subject:mime-version;
        bh=TdQuFTR4eGYisXDf5WQptAKTeoejf9EXHOx2DvRc2Q8=;
        b=To7FYlUDkiXPSHagh83J/cgAiaUGQcpEQO/S10L8+IaIrTWwdjIXSqGpoeRcLd3m4v
         FoWmyUEnp7Ym6QUh7WEpfwRNfTO/+cuE2LKDU+JobGidgh50m1Sx0IjH07N14zz9nTxx
         lUBFKm3dT3y5BnEexe51XbsXWWmtl1omhjZj0NgtYKUYkwormM3uRYxmDIeDsgiZG928
         k34P52S0kzOdBTYf5gJKWUdI4pR+RFWtDBW3nvSiKwXuMztNHJFUrsMfx0clGy6+V0I8
         13oHgvkmvOTtpk1j2KDM57U3G2fRtzzTYPTQIomsFdy5DYo2qSqTYM0tYVPC5JVBdDto
         SuOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:message-id:subject:mime-version;
        bh=TdQuFTR4eGYisXDf5WQptAKTeoejf9EXHOx2DvRc2Q8=;
        b=QDY8Nk8JMZmDigbXQAIKgUeOFipygXIPjU6V6Jj2Bc4QGPWXRr2Alv1XZgq6bgwtm/
         BypkIU4Q1/EJenJV1Ss9gw2iXKxvogJUKRQZs7KnDpzluQYFdDO40HHJk3vJVAbBpkGA
         kRhTMG6XvKbvw84bZn7/eZRKIeiaLz+z4hUd0X7XSJoKJLqCiFkCr23i0kt4dPX0xYSA
         XOvzfzlpCOuH/YlaPBQTbJliV+h8uQAUDO0OMK9sdbWZpmzrl8lu1ikpd3Q01dVglZv/
         tsYB5F9FRudFedOYFhVQS/yCUz0T+VcHg4SRxTujkIgVVFebqgaaJ80lWSaT2DctJFDA
         SYbA==
X-Gm-Message-State: AA+aEWb2BPulDS7Bgr8Y6jl28d4IUytqaPPQDiK5D5oETuiy9alsZV4d
	+1C84PAL/JQYEmx98kV/gMc=
X-Google-Smtp-Source: AFSGD/Xo+i6dKsiyArJdjSGp6OvASQgEquYPgFbdeqAROna6817iZ5yd1213K9d0m+9vmVbOWv75Xg==
X-Received: by 2002:a6b:c992:: with SMTP id z140mr26590048iof.13.1543352803334;
        Tue, 27 Nov 2018 13:06:43 -0800 (PST)
Date: Tue, 27 Nov 2018 16:06:36 -0500
From: =?utf-8?Q?Rafael_Mendon=C3=A7a_Fran=C3=A7a?=
 <rafaelmfranca@gmail.com>
To: =?utf-8?Q?Rubyonrails-Security=C2=A0?=
 <rubyonrails-security@googlegroups.com>, 
 =?utf-8?Q?Ruby-Security-Ann=C2=A0?=
 <ruby-security-ann@googlegroups.com>, =?utf-8?Q?Oss-Security=C2=A0?=
 <oss-security@lists.openwall.com>
Message-ID: <bf67ba8b-e03f-424b-92ba-c32b01ab1c08@Spark>
X-Readdle-Message-ID: bf67ba8b-e03f-424b-92ba-c32b01ab1c08@Spark
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="5bfdb1e1_507ed7ab_1ee9"
Subject: [oss-security] [CVE-2018-16476] Broken Access Control vulnerability in Active
 Job

--5bfdb1e1_507ed7ab_1ee9
Content-Type: multipart/alternative; boundary="5bfdb1e1_3d1b58ba_1ee9"

--5bfdb1e1_3d1b58ba_1ee9
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

There is a vulnerability in Active Job. This vulnerability has been
assigned the CVE identifier CVE-2018-16476.

Versions Affected: >=3D 4.2.0
Not affected: < 4.2.0
Fixed Versions: 4.2.11, 5.0.7.1, 5.1.6.1, 5.2.1.1

Impact
------
Carefully crafted user input can cause Active Job to deserialize it using G=
lobalId
and allow an attacker to have access to information that they should not ha=
ve.

Vulnerable code will look something like this:

=C2=A0 =C2=A0 MyJob.perform_later(user_input)

All users running an affected release should either upgrade or use one of t=
he
workarounds immediately.

Releases
--------
The FIXED releases are available at the normal locations.

Workarounds
-----------
Putting the following monkey patch in an intializer can help to mitigate th=
e issue:

```
require 'active_job'
require 'active_job/arguments'

module ArgumentsNotDeserializingGlobalId
=C2=A0 def deserialize_argument(argument)
=C2=A0 =C2=A0 case argument
=C2=A0 =C2=A0 when String
=C2=A0 =C2=A0 =C2=A0 argument
=C2=A0 =C2=A0 else
=C2=A0 =C2=A0 =C2=A0 super
=C2=A0 =C2=A0 end
=C2=A0 end
end

ActiveJob::Arguments.singleton_class.prepend(ArgumentsNotDeserializingGloba=
lId)
```

Patches
-------
To aid users who aren't able to upgrade immediately we have provided patche=
s for
the two supported release series. They are in git-am format and consist of a
single changeset.

* 4-2-activejob-direct-access.patch - Patch for 4.2 series
* 5-0-activejob-direct-access.patch - Patch for 5.0 series
* 5-1-activejob-direct-access.patch - Patch for 5.1 series
* 5-2-activejob-direct-access.patch - Patch for 5.2 series

Please note that only the 5.x and 4.2.x series are supported at present. Us=
ers
of earlier unsupported releases are advised to upgrade as soon as possible =
as we
cannot guarantee the continued availability of security fixes for unsupport=
ed
releases.

Rafael Fran=C3=A7a

--5bfdb1e1_3d1b58ba_1ee9
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<html xmlns=3D"http://www.w3.org/1999/xhtml">
<head>
<title></title>
</head>
<body>
<div name=3D"messageBodySection" style=3D"font-size: 14px; font-family: -ap=
ple-system, BlinkMacSystemFont, sans-serif;">There is a vulnerability in Ac=
tive Job. This vulnerability has been<br />
assigned the CVE identifier CVE-2018-16476.<br />
<br />
Versions Affected: &gt;=3D 4.2.0<br />
Not affected: &lt; 4.2.0<br />
Fixed Versions: 4.2.11, 5.0.7.1, 5.1.6.1, 5.2.1.1<br />
<br />
Impact<br />
------<br />
Carefully crafted user input can cause Active Job to deserialize it using G=
lobalId<br />
and allow an attacker to have access to information that they should not ha=
ve.<br />
<br />
Vulnerable code will look something like this:<br />
<br />
&#160; &#160; MyJob.perform_later(user_input)<br />
<br />
All users running an affected release should either upgrade or use one of t=
he<br />
workarounds immediately.<br />
<br />
Releases<br />
--------<br />
The FIXED releases are available at the normal locations.<br />
<br />
Workarounds<br />
-----------<br />
Putting the following monkey patch in an intializer can help to mitigate th=
e issue:<br />
<br />
```<br />
require 'active_job'<br />
require 'active_job/arguments'<br />
<br />
module ArgumentsNotDeserializingGlobalId<br />
&#160; def deserialize_argument(argument)<br />
&#160; &#160; case argument<br />
&#160; &#160; when String<br />
&#160; &#160; &#160; argument<br />
&#160; &#160; else<br />
&#160; &#160; &#160; super<br />
&#160; &#160; end<br />
&#160; end<br />
end<br />
<br />
ActiveJob::Arguments.singleton_class.prepend(ArgumentsNotDeserializingGloba=
lId)<br />
```<br />
<br />
Patches<br />
-------<br />
To aid users who aren't able to upgrade immediately we have provided patche=
s for<br />
the two supported release series. They are in git-am format and consist of =
a<br />
single changeset.<br />
<br />
* 4-2-activejob-direct-access.patch - Patch for 4.2 series<br />
* 5-0-activejob-direct-access.patch - Patch for 5.0 series<br />
* 5-1-activejob-direct-access.patch - Patch for 5.1 series<br />
* 5-2-activejob-direct-access.patch - Patch for 5.2 series<br />
<br />
Please note that only the 5.x and 4.2.x series are supported at present. Us=
ers<br />
of earlier unsupported releases are advised to upgrade as soon as possible =
as we<br />
cannot guarantee the continued availability of security fixes for unsupport=
ed<br />
releases.<br /></div>
<div name=3D"messageSignatureSection" style=3D"font-size: 14px; font-family=
: -apple-system, BlinkMacSystemFont, sans-serif;"><br />
Rafael Fran=C3=A7a</div>
</body>
</html>

--5bfdb1e1_3d1b58ba_1ee9--

--5bfdb1e1_507ed7ab_1ee9
Content-Type: application/octet-stream
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="4-2-activejob-direct-access.patch"

RnJvbSA0ZjAzNDExZmQwN2Q3MTRiNTI1NjU1ZTI0NTdiYmQ3NjFjOWYwM2E1
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiA9P1VURi04P3E/UmFm
YWVsPTIwTWVuZG9uPUMzPUE3YT0yMEZyYW49QzM9QTdhPz0KIDxyYWZhZWxt
ZnJhbmNhQGdtYWlsLmNvbT4KRGF0ZTogV2VkLCA1IFNlcCAyMDE4IDE3OjM4
OjA5IC0wNDAwClN1YmplY3Q6IFtQQVRDSF0gRG8gbm90IGRlc2VyaWFsaXpl
IEdsb2JhbElEIG9iamVjdHMgdGhhdCB3ZXJlIG5vdCBnZW5lcmF0ZWQgYnkK
IEFjdGl2ZSBKb2IKClRydXN0aW5nIGFueSBHbG9iYUlEIG9iamVjdCB3aGVu
IGRlc2VyaWFsaXppbmcgam9icyBjYW4gYWxsb3cKYXR0YWNrZXJzIHRvIGFj
Y2VzcyBpbmZvcm1hdGlvbiB0aGF0IHNob3VsZCBub3QgYmUgYWNjZXNzaWJs
ZSB0byB0aGVtLgoKRml4IENWRS0yMDE4LTE2NDc2LgotLS0KIGFjdGl2ZWpv
Yi9saWIvYWN0aXZlX2pvYi9hcmd1bWVudHMucmIgICAgICAgICAgICAgICB8
IDIgKy0KIGFjdGl2ZWpvYi90ZXN0L2Nhc2VzL2FyZ3VtZW50X3NlcmlhbGl6
YXRpb25fdGVzdC5yYiB8IDQgKysrKwogMiBmaWxlcyBjaGFuZ2VkLCA1IGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9hY3Rp
dmVqb2IvbGliL2FjdGl2ZV9qb2IvYXJndW1lbnRzLnJiIGIvYWN0aXZlam9i
L2xpYi9hY3RpdmVfam9iL2FyZ3VtZW50cy5yYgppbmRleCBlY2Q4MWYyMDk5
Li5lMzNlZTY0OWNkIDEwMDY0NAotLS0gYS9hY3RpdmVqb2IvbGliL2FjdGl2
ZV9qb2IvYXJndW1lbnRzLnJiCisrKyBiL2FjdGl2ZWpvYi9saWIvYWN0aXZl
X2pvYi9hcmd1bWVudHMucmIKQEAgLTc1LDcgKzc1LDcgQEAgbW9kdWxlIEFj
dGl2ZUpvYgogICAgICAgZGVmIGRlc2VyaWFsaXplX2FyZ3VtZW50KGFyZ3Vt
ZW50KQogICAgICAgICBjYXNlIGFyZ3VtZW50CiAgICAgICAgIHdoZW4gU3Ry
aW5nCi0gICAgICAgICAgR2xvYmFsSUQ6OkxvY2F0b3IubG9jYXRlKGFyZ3Vt
ZW50KSB8fCBhcmd1bWVudAorICAgICAgICAgIGFyZ3VtZW50CiAgICAgICAg
IHdoZW4gKlRZUEVfV0hJVEVMSVNUCiAgICAgICAgICAgYXJndW1lbnQKICAg
ICAgICAgd2hlbiBBcnJheQpkaWZmIC0tZ2l0IGEvYWN0aXZlam9iL3Rlc3Qv
Y2FzZXMvYXJndW1lbnRfc2VyaWFsaXphdGlvbl90ZXN0LnJiIGIvYWN0aXZl
am9iL3Rlc3QvY2FzZXMvYXJndW1lbnRfc2VyaWFsaXphdGlvbl90ZXN0LnJi
CmluZGV4IDFmMTFlOTE2YzQuLjA1OGE4MjhiODYgMTAwNjQ0Ci0tLSBhL2Fj
dGl2ZWpvYi90ZXN0L2Nhc2VzL2FyZ3VtZW50X3NlcmlhbGl6YXRpb25fdGVz
dC5yYgorKysgYi9hY3RpdmVqb2IvdGVzdC9jYXNlcy9hcmd1bWVudF9zZXJp
YWxpemF0aW9uX3Rlc3QucmIKQEAgLTM1LDYgKzM1LDEwIEBAIGNsYXNzIEFy
Z3VtZW50U2VyaWFsaXphdGlvblRlc3QgPCBBY3RpdmVTdXBwb3J0OjpUZXN0
Q2FzZQogICAgIGFzc2VydF9hcmd1bWVudHNfcm91bmR0cmlwIFtAcGVyc29u
XQogICBlbmQKIAorICB0ZXN0ICJzaG91bGQga2VlcCBHbG9iYWwgSURzIHN0
cmluZ3MgYXMgdGhleSBhcmUiIGRvCisgICAgYXNzZXJ0X2FyZ3VtZW50c19y
b3VuZHRyaXAgW0BwZXJzb24udG9fZ2lkLnRvX3NdCisgIGVuZAorCiAgIHRl
c3QgJ3Nob3VsZCBkaXZlIGRlZXAgaW50byBhcnJheXMgYW5kIGhhc2hlcycg
ZG8KICAgICBhc3NlcnRfYXJndW1lbnRzX3JvdW5kdHJpcCBbMywgW0BwZXJz
b25dXQogICAgIGFzc2VydF9hcmd1bWVudHNfcm91bmR0cmlwIFt7ICdhJyA9
PiBAcGVyc29uIH1dCi0tIAoyLjE4LjAKCg==

--5bfdb1e1_507ed7ab_1ee9
Content-Type: application/octet-stream
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="5-0-activejob-direct-access.patch"

RnJvbSBlOWM5OGE4OWZmMDY3MmM4OWIyMGMxOGYyMDdkOTVjY2E5MTQ5NGJm
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiA9P1VURi04P3E/UmFm
YWVsPTIwTWVuZG9uPUMzPUE3YT0yMEZyYW49QzM9QTdhPz0KIDxyYWZhZWxt
ZnJhbmNhQGdtYWlsLmNvbT4KRGF0ZTogV2VkLCA1IFNlcCAyMDE4IDE3OjM4
OjA5IC0wNDAwClN1YmplY3Q6IFtQQVRDSF0gRG8gbm90IGRlc2VyaWFsaXpl
IEdsb2JhbElEIG9iamVjdHMgdGhhdCB3ZXJlIG5vdCBnZW5lcmF0ZWQgYnkK
IEFjdGl2ZSBKb2IKClRydXN0aW5nIGFueSBHbG9iYUlEIG9iamVjdCB3aGVu
IGRlc2VyaWFsaXppbmcgam9icyBjYW4gYWxsb3cKYXR0YWNrZXJzIHRvIGFj
Y2VzcyBpbmZvcm1hdGlvbiB0aGF0IHNob3VsZCBub3QgYmUgYWNjZXNzaWJs
ZSB0byB0aGVtLgoKRml4IENWRS0yMDE4LTE2NDc2LgotLS0KIGFjdGl2ZWpv
Yi9saWIvYWN0aXZlX2pvYi9hcmd1bWVudHMucmIgICAgICAgICAgICAgICB8
IDIgKy0KIGFjdGl2ZWpvYi90ZXN0L2Nhc2VzL2FyZ3VtZW50X3NlcmlhbGl6
YXRpb25fdGVzdC5yYiB8IDQgKysrKwogMiBmaWxlcyBjaGFuZ2VkLCA1IGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9hY3Rp
dmVqb2IvbGliL2FjdGl2ZV9qb2IvYXJndW1lbnRzLnJiIGIvYWN0aXZlam9i
L2xpYi9hY3RpdmVfam9iL2FyZ3VtZW50cy5yYgppbmRleCBlODA5YmRkZGU0
Li5kMTY5ZGJhZGIxIDEwMDY0NAotLS0gYS9hY3RpdmVqb2IvbGliL2FjdGl2
ZV9qb2IvYXJndW1lbnRzLnJiCisrKyBiL2FjdGl2ZWpvYi9saWIvYWN0aXZl
X2pvYi9hcmd1bWVudHMucmIKQEAgLTg3LDcgKzg3LDcgQEAgZGVmIHNlcmlh
bGl6ZV9hcmd1bWVudChhcmd1bWVudCkKICAgICAgIGRlZiBkZXNlcmlhbGl6
ZV9hcmd1bWVudChhcmd1bWVudCkKICAgICAgICAgY2FzZSBhcmd1bWVudAog
ICAgICAgICB3aGVuIFN0cmluZwotICAgICAgICAgIEdsb2JhbElEOjpMb2Nh
dG9yLmxvY2F0ZShhcmd1bWVudCkgfHwgYXJndW1lbnQKKyAgICAgICAgICBh
cmd1bWVudAogICAgICAgICB3aGVuICpUWVBFX1dISVRFTElTVAogICAgICAg
ICAgIGFyZ3VtZW50CiAgICAgICAgIHdoZW4gQXJyYXkKZGlmZiAtLWdpdCBh
L2FjdGl2ZWpvYi90ZXN0L2Nhc2VzL2FyZ3VtZW50X3NlcmlhbGl6YXRpb25f
dGVzdC5yYiBiL2FjdGl2ZWpvYi90ZXN0L2Nhc2VzL2FyZ3VtZW50X3Nlcmlh
bGl6YXRpb25fdGVzdC5yYgppbmRleCA4YzAwODY0NWJlLi4zYmY4MDMwYzUw
IDEwMDY0NAotLS0gYS9hY3RpdmVqb2IvdGVzdC9jYXNlcy9hcmd1bWVudF9z
ZXJpYWxpemF0aW9uX3Rlc3QucmIKKysrIGIvYWN0aXZlam9iL3Rlc3QvY2Fz
ZXMvYXJndW1lbnRfc2VyaWFsaXphdGlvbl90ZXN0LnJiCkBAIC0zNSw2ICsz
NSwxMCBAQCBjbGFzcyBBcmd1bWVudFNlcmlhbGl6YXRpb25UZXN0IDwgQWN0
aXZlU3VwcG9ydDo6VGVzdENhc2UKICAgICBhc3NlcnRfYXJndW1lbnRzX3Jv
dW5kdHJpcCBbQHBlcnNvbl0KICAgZW5kCiAKKyAgdGVzdCAic2hvdWxkIGtl
ZXAgR2xvYmFsIElEcyBzdHJpbmdzIGFzIHRoZXkgYXJlIiBkbworICAgIGFz
c2VydF9hcmd1bWVudHNfcm91bmR0cmlwIFtAcGVyc29uLnRvX2dpZC50b19z
XQorICBlbmQKKwogICB0ZXN0ICdzaG91bGQgZGl2ZSBkZWVwIGludG8gYXJy
YXlzIGFuZCBoYXNoZXMnIGRvCiAgICAgYXNzZXJ0X2FyZ3VtZW50c19yb3Vu
ZHRyaXAgWzMsIFtAcGVyc29uXV0KICAgICBhc3NlcnRfYXJndW1lbnRzX3Jv
dW5kdHJpcCBbeyAnYScgPT4gQHBlcnNvbiB9XQotLSAKMi4xOC4wCgo=

--5bfdb1e1_507ed7ab_1ee9
Content-Type: application/octet-stream
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="5-1-activejob-direct-access.patch"

RnJvbSAwOGIxNzg5ZGE3NjIxODZhNDAzYWU0YzkwMTI1MzAzMjcwMGEzZmFj
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiA9P1VURi04P3E/UmFm
YWVsPTIwTWVuZG9uPUMzPUE3YT0yMEZyYW49QzM9QTdhPz0KIDxyYWZhZWxt
ZnJhbmNhQGdtYWlsLmNvbT4KRGF0ZTogV2VkLCA1IFNlcCAyMDE4IDE3OjM4
OjA5IC0wNDAwClN1YmplY3Q6IFtQQVRDSF0gRG8gbm90IGRlc2VyaWFsaXpl
IEdsb2JhbElEIG9iamVjdHMgdGhhdCB3ZXJlIG5vdCBnZW5lcmF0ZWQgYnkK
IEFjdGl2ZSBKb2IKClRydXN0aW5nIGFueSBHbG9iYUlEIG9iamVjdCB3aGVu
IGRlc2VyaWFsaXppbmcgam9icyBjYW4gYWxsb3cKYXR0YWNrZXJzIHRvIGFj
Y2VzcyBpbmZvcm1hdGlvbiB0aGF0IHNob3VsZCBub3QgYmUgYWNjZXNzaWJs
ZSB0byB0aGVtLgoKRml4IENWRS0yMDE4LTE2NDc2LgotLS0KIGFjdGl2ZWpv
Yi9saWIvYWN0aXZlX2pvYi9hcmd1bWVudHMucmIgICAgICAgICAgICAgICB8
IDIgKy0KIGFjdGl2ZWpvYi90ZXN0L2Nhc2VzL2FyZ3VtZW50X3NlcmlhbGl6
YXRpb25fdGVzdC5yYiB8IDQgKysrKwogMiBmaWxlcyBjaGFuZ2VkLCA1IGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9hY3Rp
dmVqb2IvbGliL2FjdGl2ZV9qb2IvYXJndW1lbnRzLnJiIGIvYWN0aXZlam9i
L2xpYi9hY3RpdmVfam9iL2FyZ3VtZW50cy5yYgppbmRleCA1MjNhMGU3ZjMz
Li5kOTM2YjM2OWNhIDEwMDY0NAotLS0gYS9hY3RpdmVqb2IvbGliL2FjdGl2
ZV9qb2IvYXJndW1lbnRzLnJiCisrKyBiL2FjdGl2ZWpvYi9saWIvYWN0aXZl
X2pvYi9hcmd1bWVudHMucmIKQEAgLTc1LDcgKzc1LDcgQEAgZGVmIHNlcmlh
bGl6ZV9hcmd1bWVudChhcmd1bWVudCkKICAgICAgIGRlZiBkZXNlcmlhbGl6
ZV9hcmd1bWVudChhcmd1bWVudCkKICAgICAgICAgY2FzZSBhcmd1bWVudAog
ICAgICAgICB3aGVuIFN0cmluZwotICAgICAgICAgIEdsb2JhbElEOjpMb2Nh
dG9yLmxvY2F0ZShhcmd1bWVudCkgfHwgYXJndW1lbnQKKyAgICAgICAgICBh
cmd1bWVudAogICAgICAgICB3aGVuICpUWVBFX1dISVRFTElTVAogICAgICAg
ICAgIGFyZ3VtZW50CiAgICAgICAgIHdoZW4gQXJyYXkKZGlmZiAtLWdpdCBh
L2FjdGl2ZWpvYi90ZXN0L2Nhc2VzL2FyZ3VtZW50X3NlcmlhbGl6YXRpb25f
dGVzdC5yYiBiL2FjdGl2ZWpvYi90ZXN0L2Nhc2VzL2FyZ3VtZW50X3Nlcmlh
bGl6YXRpb25fdGVzdC5yYgppbmRleCA3OTM0ZDhlNTU2Li5kYWMwNGFkYjEx
IDEwMDY0NAotLS0gYS9hY3RpdmVqb2IvdGVzdC9jYXNlcy9hcmd1bWVudF9z
ZXJpYWxpemF0aW9uX3Rlc3QucmIKKysrIGIvYWN0aXZlam9iL3Rlc3QvY2Fz
ZXMvYXJndW1lbnRfc2VyaWFsaXphdGlvbl90ZXN0LnJiCkBAIC0zNSw2ICsz
NSwxMCBAQCBjbGFzcyBBcmd1bWVudFNlcmlhbGl6YXRpb25UZXN0IDwgQWN0
aXZlU3VwcG9ydDo6VGVzdENhc2UKICAgICBhc3NlcnRfYXJndW1lbnRzX3Jv
dW5kdHJpcCBbQHBlcnNvbl0KICAgZW5kCiAKKyAgdGVzdCAic2hvdWxkIGtl
ZXAgR2xvYmFsIElEcyBzdHJpbmdzIGFzIHRoZXkgYXJlIiBkbworICAgIGFz
c2VydF9hcmd1bWVudHNfcm91bmR0cmlwIFtAcGVyc29uLnRvX2dpZC50b19z
XQorICBlbmQKKwogICB0ZXN0ICJzaG91bGQgZGl2ZSBkZWVwIGludG8gYXJy
YXlzIGFuZCBoYXNoZXMiIGRvCiAgICAgYXNzZXJ0X2FyZ3VtZW50c19yb3Vu
ZHRyaXAgWzMsIFtAcGVyc29uXV0KICAgICBhc3NlcnRfYXJndW1lbnRzX3Jv
dW5kdHJpcCBbeyAiYSIgPT4gQHBlcnNvbiB9XQotLSAKMi4xOC4wCgo=

--5bfdb1e1_507ed7ab_1ee9
Content-Type: application/octet-stream
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="5-2-activejob-direct-access.patch"

RnJvbSAwNGM2ZGMzZDhhMGM3MWM1NTQ0MDc1YjBmNzM5MzZiM2FlYzJiOWU5
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiA9P1VURi04P3E/UmFm
YWVsPTIwTWVuZG9uPUMzPUE3YT0yMEZyYW49QzM9QTdhPz0KIDxyYWZhZWxt
ZnJhbmNhQGdtYWlsLmNvbT4KRGF0ZTogV2VkLCA1IFNlcCAyMDE4IDE3OjM4
OjA5IC0wNDAwClN1YmplY3Q6IFtQQVRDSF0gRG8gbm90IGRlc2VyaWFsaXpl
IEdsb2JhbElEIG9iamVjdHMgdGhhdCB3ZXJlIG5vdCBnZW5lcmF0ZWQgYnkK
IEFjdGl2ZSBKb2IKClRydXN0aW5nIGFueSBHbG9iYUlEIG9iamVjdCB3aGVu
IGRlc2VyaWFsaXppbmcgam9icyBjYW4gYWxsb3cKYXR0YWNrZXJzIHRvIGFj
Y2VzcyBpbmZvcm1hdGlvbiB0aGF0IHNob3VsZCBub3QgYmUgYWNjZXNzaWJs
ZSB0byB0aGVtLgoKRml4IENWRS0yMDE4LTE2NDc2LgotLS0KIGFjdGl2ZWpv
Yi9saWIvYWN0aXZlX2pvYi9hcmd1bWVudHMucmIgICAgICAgICAgICAgICB8
IDIgKy0KIGFjdGl2ZWpvYi90ZXN0L2Nhc2VzL2FyZ3VtZW50X3NlcmlhbGl6
YXRpb25fdGVzdC5yYiB8IDQgKysrKwogMiBmaWxlcyBjaGFuZ2VkLCA1IGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9hY3Rp
dmVqb2IvbGliL2FjdGl2ZV9qb2IvYXJndW1lbnRzLnJiIGIvYWN0aXZlam9i
L2xpYi9hY3RpdmVfam9iL2FyZ3VtZW50cy5yYgppbmRleCBkZTExZTdmY2Ix
Li44ZDk5MmE0NzhiIDEwMDY0NAotLS0gYS9hY3RpdmVqb2IvbGliL2FjdGl2
ZV9qb2IvYXJndW1lbnRzLnJiCisrKyBiL2FjdGl2ZWpvYi9saWIvYWN0aXZl
X2pvYi9hcmd1bWVudHMucmIKQEAgLTc3LDcgKzc3LDcgQEAgZGVmIHNlcmlh
bGl6ZV9hcmd1bWVudChhcmd1bWVudCkKICAgICAgIGRlZiBkZXNlcmlhbGl6
ZV9hcmd1bWVudChhcmd1bWVudCkKICAgICAgICAgY2FzZSBhcmd1bWVudAog
ICAgICAgICB3aGVuIFN0cmluZwotICAgICAgICAgIEdsb2JhbElEOjpMb2Nh
dG9yLmxvY2F0ZShhcmd1bWVudCkgfHwgYXJndW1lbnQKKyAgICAgICAgICBh
cmd1bWVudAogICAgICAgICB3aGVuICpUWVBFX1dISVRFTElTVAogICAgICAg
ICAgIGFyZ3VtZW50CiAgICAgICAgIHdoZW4gQXJyYXkKZGlmZiAtLWdpdCBh
L2FjdGl2ZWpvYi90ZXN0L2Nhc2VzL2FyZ3VtZW50X3NlcmlhbGl6YXRpb25f
dGVzdC5yYiBiL2FjdGl2ZWpvYi90ZXN0L2Nhc2VzL2FyZ3VtZW50X3Nlcmlh
bGl6YXRpb25fdGVzdC5yYgppbmRleCA3ZTdmODU0ZGEwLi40ZGVhMjMzYjVj
IDEwMDY0NAotLS0gYS9hY3RpdmVqb2IvdGVzdC9jYXNlcy9hcmd1bWVudF9z
ZXJpYWxpemF0aW9uX3Rlc3QucmIKKysrIGIvYWN0aXZlam9iL3Rlc3QvY2Fz
ZXMvYXJndW1lbnRfc2VyaWFsaXphdGlvbl90ZXN0LnJiCkBAIC0zNyw2ICsz
NywxMCBAQCBjbGFzcyBBcmd1bWVudFNlcmlhbGl6YXRpb25UZXN0IDwgQWN0
aXZlU3VwcG9ydDo6VGVzdENhc2UKICAgICBhc3NlcnRfYXJndW1lbnRzX3Jv
dW5kdHJpcCBbQHBlcnNvbl0KICAgZW5kCiAKKyAgdGVzdCAic2hvdWxkIGtl
ZXAgR2xvYmFsIElEcyBzdHJpbmdzIGFzIHRoZXkgYXJlIiBkbworICAgIGFz
c2VydF9hcmd1bWVudHNfcm91bmR0cmlwIFtAcGVyc29uLnRvX2dpZC50b19z
XQorICBlbmQKKwogICB0ZXN0ICJzaG91bGQgZGl2ZSBkZWVwIGludG8gYXJy
YXlzIGFuZCBoYXNoZXMiIGRvCiAgICAgYXNzZXJ0X2FyZ3VtZW50c19yb3Vu
ZHRyaXAgWzMsIFtAcGVyc29uXV0KICAgICBhc3NlcnRfYXJndW1lbnRzX3Jv
dW5kdHJpcCBbeyAiYSIgPT4gQHBlcnNvbiB9XQotLSAKMi4xOC4wCgo=

--5bfdb1e1_507ed7ab_1ee9--

