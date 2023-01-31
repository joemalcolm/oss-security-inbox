Received: (qmail 17978 invoked by uid 550); 31 Jan 2023 17:40:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26017 invoked from network); 31 Jan 2023 16:00:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675180800;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=4OPzWG79ZRjNTxJmwS2fzw+0Ff2SNx4ZpFbI7R0n4xQ=;
	b=PBg760eCppRSDLmn8atn0fKh6hRDm1dtEm63PBd+p5D37E7ZOayEkGa16+HLys3x39nnYM
	nK0V76Q/rw0eROsnrB0sBVIHHAq36XuMFPJEMNhAMpjJCg9+lXoDE6210pz+zmP9QwSp0X
	098LfMJxhonZOWj2Yn2hJOk8x1Bmn+A=
X-MC-Unique: Ygh7S-BFN_6PkemX6EqYKQ-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4OPzWG79ZRjNTxJmwS2fzw+0Ff2SNx4ZpFbI7R0n4xQ=;
        b=BvwV1qui1SaXymwi8VqK1UStOjJTDYDTbE7yFeUjXzad2VVSWEWTDAP7NptVwasDhP
         wEVb5kH+7GUVshKwP5gilW8qC1cCRpzJXzUxLIEd37EW+e2RUjhLBB7hra0j1dDPMuxE
         aYEW4W0Q1oqDzWStzPTX/egCMTSNVox8vK1424wZYerrkjnrS0IG24PHiPgxMAqu+OzU
         g28MuoBK4MX1BYCjL40Y9e+7OZP7bOqkaN3o6Z/Xf0Nb/GPQ/a3e/mPVflx8N/3pQ7O4
         nw88AgAdAemQidkCwRnK7/vMhD7hv1qCXdtquvd3um4R6XtcrsXBYK33wD48bBrfWOEG
         15dQ==
X-Gm-Message-State: AO0yUKXR8RM8f0EXUHPNCW3N5Fd8c2l7i6PLaRX9VzR4BNkPflht+rGN
	A3eIucl4WCCy0nNelYBPWvu2sHvef8rFRTZH07tjrp3k6diEMWr5yQOGfo6KKUu7YabwbS2/jrm
	78sv7S3HtGC4Wa/Gf3D9O9PYhVrn6K8KmSgRgJIRE177T
X-Received: by 2002:a17:90a:ac0a:b0:22c:5b6f:c499 with SMTP id o10-20020a17090aac0a00b0022c5b6fc499mr2551376pjq.158.1675180796958;
        Tue, 31 Jan 2023 07:59:56 -0800 (PST)
X-Google-Smtp-Source: AK7set/qEPUscpYlEowsyGmS/hcffGVQycmJITUVUZ4tT4fPvIyfhY9OfRlFW9h0Ckom7G0CPPPEhERx7CVJdn7JRHI=
X-Received: by 2002:a17:90a:ac0a:b0:22c:5b6f:c499 with SMTP id
 o10-20020a17090aac0a00b0022c5b6fc499mr2551368pjq.158.1675180796490; Tue, 31
 Jan 2023 07:59:56 -0800 (PST)
MIME-Version: 1.0
From: Marco Benatto <mbenatto@redhat.com>
Date: Tue, 31 Jan 2023 12:59:19 -0300
Message-ID: <CAOGQQ29pYOHP2puP-nAzO+Qnbc-OouwnVFpQVY_=OvVo12=Mkw@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="0000000000004f806505f3916c67"
Subject: [oss-security] pesign: Local privilege escalation on pesign systemd service

--0000000000004f806505f3916c67
Content-Type: text/plain; charset="UTF-8"

Hello all,

a local privilege escalation vulnerability was found in pesign. This
vulnerability has been identified by CVE-2022-3560.

Description:

"The pesign deamon started by the systemd service of the pesign
package is vulnerable to a path traversal vulnerability allowing a local
privilege escalation. When properly exploited this flaw allows a
malicious unprivileged user with access to pesign user or group can
gain access to higher privileged files and directories."

CVSSv3.1:7.8/CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H

The patch for this issue is attached to this message.

I'd like to thank Matthias Gerstner from SUSE Security Team for
reporting this issue.

Marco Benatto
Red Hat Product Security
secalert@redhat.com for urgent response

--0000000000004f806505f3916c67
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-Use-normal-file-permissions-instead-of-ACLs.patch"
Content-Disposition: attachment; 
	filename="0001-Use-normal-file-permissions-instead-of-ACLs.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_ldkf4o860>
X-Attachment-Id: f_ldkf4o860

RnJvbSAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAw
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBSb2JiaWUgSGFyd29v
ZCA8cmhhcndvb2RAcmVkaGF0LmNvbT4KRGF0ZTogV2VkLCAxOCBKYW4gMjAy
MyAxNDowMDoyMiAtMDUwMApTdWJqZWN0OiBbUEFUQ0hdIFVzZSBub3JtYWwg
ZmlsZSBwZXJtaXNzaW9ucyBpbnN0ZWFkIG9mIEFDTHMKCkZpeGVzIGEgc3lt
bGluayBhdHRhY2sgdGhhdCBjYW4ndCBiZSBtaXRpZ2F0ZWQgdXNpbmcgZ2V0
ZmFjbC9zZXRmYWNsLgoKcGVzaWduLWF1dGhvcml6ZSBpcyBub3cgZGVwcmVj
YXRlZCBhbmQgd2lsbCBiZSByZW1vdmVkIGluIGEgZnV0dXJlCnJlbGVhc2Uu
CgpSZXNvbHZlczogQ1ZFLTIwMjItMzU2MApTaWduZWQtb2ZmLWJ5OiBSb2Ji
aWUgSGFyd29vZCA8cmhhcndvb2RAcmVkaGF0LmNvbT4KLS0tCiBzcmMvcGVz
aWduLWF1dGhvcml6ZS5pbiB8IDUwICsrKy0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAz
IGluc2VydGlvbnMoKyksIDQ3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L3NyYy9wZXNpZ24tYXV0aG9yaXplLmluIGIvc3JjL3Blc2lnbi1hdXRob3Jp
emUuaW4KaW5kZXggNjk3OTdkNS4uYjRlODllMCAxMDA2NDQKLS0tIGEvc3Jj
L3Blc2lnbi1hdXRob3JpemUuaW4KKysrIGIvc3JjL3Blc2lnbi1hdXRob3Jp
emUuaW4KQEAgLTIsNTYgKzIsMTIgQEAKIHNldCAtZQogc2V0IC11CiAKLSMK
LSMgV2l0aCAvcnVuL3Blc2lnbi9zb2NrZXQgb24gdG1wZnMsIGEgc2ltcGxl
IHdheSBvZiByZXN0b3JpbmcgdGhlCi0jIGFjbHMgZm9yIHNwZWNpZmljIHVz
ZXJzIGlzIHVzZWZ1bAotIwotIyAgQ29tcGFyZSB0bzogaHR0cDovL2luZnJh
c3RydWN0dXJlLmZlZG9yYXByb2plY3Qub3JnL2NnaXQvYW5zaWJsZS5naXQv
dHJlZS9yb2xlcy9ia2VybmVsL3Rhc2tzL21haW4ueW1sP2lkPTE3MTk4ZGFk
ZWJmNTlkODA5MGI3ZWQ2MjFiYzhhYjIyMTUyZDJlYjYKLSMKLQogIyBMaWNl
bnNlOiBHUEx2MgotZGVjbGFyZSAtYSBmaWxldXNlcnM9KCkKLWRlY2xhcmUg
LWEgZGlydXNlcnM9KCkKLXdoaWxlIHJlYWQgLXIgdXNlciA7IGRvCi0JZGly
dXNlcnNbJHsjZGlydXNlcnNbQF19XT0tbQotCWRpcnVzZXJzWyR7I2RpcnVz
ZXJzW0BdfV09InU6JHVzZXI6cnd4IgotCWZpbGV1c2Vyc1skeyNmaWxldXNl
cnNbQF19XT0tbQotCWZpbGV1c2Vyc1skeyNmaWxldXNlcnNbQF19XT0idTok
dXNlcjpydyIKLWRvbmUgPC9ldGMvcGVzaWduL3VzZXJzCiAKLWRlY2xhcmUg
LWEgZmlsZWdyb3Vwcz0oKQotZGVjbGFyZSAtYSBkaXJncm91cHM9KCkKLXdo
aWxlIHJlYWQgLXIgZ3JvdXAgOyBkbwotCWRpcmdyb3Vwc1skeyNkaXJncm91
cHNbQF19XT0tbQotCWRpcmdyb3Vwc1skeyNkaXJncm91cHNbQF19XT0iZzok
Z3JvdXA6cnd4IgotCWZpbGVncm91cHNbJHsjZmlsZWdyb3Vwc1tAXX1dPS1t
Ci0JZmlsZWdyb3Vwc1skeyNmaWxlZ3JvdXBzW0BdfV09Imc6JGdyb3VwOnJ3
IgotZG9uZSA8L2V0Yy9wZXNpZ24vZ3JvdXBzCi0KLXVwZGF0ZV9zdWJkaXIo
KSB7Ci0Jc3ViZGlyPSQxICYmIHNoaWZ0Ci0KLQlzZXRmYWNsIC1iayAiJHtz
dWJkaXJ9IgotCXNldGZhY2wgIiR7ZGlydXNlcnNbQF19IiAiJHtkaXJncm91
cHNbQF19IiAiJHtzdWJkaXJ9IgotCWZvciB4IGluICIke3N1YmRpcn0iKiA7
IGRvCi0JCWlmIFsgLWQgIiR7eH0iIF07IHRoZW4KLQkJCXNldGZhY2wgLWJr
ICIke3h9IgotCQkJc2V0ZmFjbCAiJHtkaXJ1c2Vyc1tAXX0iICIke2Rpcmdy
b3Vwc1tAXX0iICIke3h9IgotCQkJdXBkYXRlX3N1YmRpciAiJHt4fS8iCi0J
CWVsaWYgWyAtZSAiJHt4fSIgXTsgdGhlbgotCQkJc2V0ZmFjbCAtYmsgIiR7
eH0iCi0JCQlzZXRmYWNsICIke2ZpbGV1c2Vyc1tAXX0iICIke2ZpbGVncm91
cHNbQF19IiAiJHt4fSIKLQkJZWxzZQotCQkJOjsKLQkJZmkKLQlkb25lCi19
CisjIFRoaXMgc2NyaXB0IGlzIGRlcHJlY2F0ZWQgYW5kIHdpbGwgYmUgcmVt
b3ZlZCBpbiBhIGZ1dHVyZSByZWxlYXNlLgogCiBzbGVlcCAzCiBmb3IgeCBp
biBAQFJVTkRJUkBAcGVzaWduLyAvZXRjL3BraS9wZXNpZ24vIDsgZG8KLQlp
ZiBbIC1kICIke3h9IiBdOyB0aGVuCi0JCXVwZGF0ZV9zdWJkaXIgIiR7eH0i
Ci0JZWxzZQotCQk6OwotCWZpCisJY2hvd24gLVIgcGVzaWduOnBlc2lnbiAi
JHt4fSIgfHwgdHJ1ZQorCWNobW9kIC1SIHVnK3J3WCAiJHt4fSIgfHwgdHJ1
ZQogZG9uZQo=

--0000000000004f806505f3916c67--

