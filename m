X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3515" "Monday" "16" "May" "2016" "17:30:16" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1605161718050.4904@wniryva>" "75" "[oss-security] CVE-2016-3713 Linux kernel: kvm: OOB r/w access issue with MSR 0x2F8" nil nil nil "5" "2016051612:00:16" "[oss-security] CVE-2016-3713 Linux kernel: kvm: OOB r/w access issue with MSR 0x2F8" (number mark "U       ppandit@redh May 16   75/3515  " thread-indent "\"[oss-security] CVE-2016-3713 Linux kernel: kvm: OOB r/w access issue with MSR 0x2F8\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9527 invoked by uid 550); 16 May 2016 12:00:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9503 invoked from network); 16 May 2016 12:00:37 -0000
Date: Mon, 16 May 2016 17:30:16 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Radim Krcmar <rkrcmar@redhat.com>, Paolo Bonzini <pbonzini@redhat.com>,
        Salvatore Bonaccorso <carnil@debian.org>
Message-ID: <alpine.LFD.2.20.1605161718050.4904@wniryva>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="0-351776692-1463399991=:4904"
Content-ID: <alpine.LFD.2.20.1605161730000.4904@wniryva>
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]); Mon, 16 May 2016 12:00:25 +0000 (UTC)
Subject: [oss-security] CVE-2016-3713 Linux kernel: kvm: OOB r/w access issue with MSR
 0x2F8

--0-351776692-1463399991=:4904
Content-Type: text/plain; FORMAT=flowed; CHARSET=US-ASCII
Content-ID: <alpine.LFD.2.20.1605161730001.4904@wniryva>

   Hello,

Linux kernel built with the Kernel-based Virtual Machine(CONFIG_KVM) with 
variable Memory Type Range Registers(MTRR) support is vulnerable to an 
out-of-bounds r/w access issue. It could occur while accessing processor's 
MTRRs via ioctl(2) calls.

A privileged user inside guest could use this flaw to manipulate host kernel's 
memory bytes leading to information disclosure OR potentially crashing the 
kernel resulting in DoS.

'CVE-2016-3713' has been assigned to this issue by Red Hat Inc. A proposed 
patch is attached herein to fix this issue.

Reference:
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1332139


This issue was reported by Mr David Matlack of Google Inc.


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
--0-351776692-1463399991=:4904
Content-Type: text/plain; CHARSET=UTF-8; NAME=KVM-MTRR-remove-MSR-0x2f8.patch
Content-Transfer-Encoding: BASE64
Content-ID: <alpine.LFD.2.20.1605161729500.4904@wniryva>
Content-Description: 
Content-Disposition: ATTACHMENT; FILENAME=KVM-MTRR-remove-MSR-0x2f8.patch

RnJvbTogPT9VVEYtOD9xP1JhZGltPTIwS3I9QzQ9OERtPUMzPUExPUM1PTk5
Pz0gPHJrcmNtYXJAcmVkaGF0LmNvbT4NClN1YmplY3Q6IFtQQVRDSF0gS1ZN
OiBNVFJSOiByZW1vdmUgTVNSIDB4MmY4DQpNSU1FLVZlcnNpb246IDEuMA0K
Q29udGVudC1UeXBlOiB0ZXh0L3BsYWluOyBjaGFyc2V0PVVURi04DQpDb250
ZW50LVRyYW5zZmVyLUVuY29kaW5nOiA4Yml0DQoNCk1TUiAweDJmOCBhY2Nl
c3NlZCB0aGUgMTI0dGggVmFyaWFibGUgUmFuZ2UgTVRSUiBldmVyIHNpbmNl
IE1UUlIgc3VwcG9ydA0Kd2FzIGludHJvZHVjZWQgYnkgOWJhMDc1YTY2NGRm
ICgiS1ZNOiBNVFJSIHN1cHBvcnQiKS4NCg0KMHgyZjggYmVjYW1lIGhhcm1m
dWwgd2hlbiA5MTBhNmFhZTRlMmUgKCJLVk06IE1UUlI6IGV4YWN0bHkgZGVm
aW5lIHRoZQ0Kc2l6ZSBvZiB2YXJpYWJsZSBNVFJScyIpIHNocmlua2VkIHRo
ZSBhcnJheSBvZiBWUiBNVFJScyBmcm9tIDI1NiB0byA4LA0Kd2hpY2ggbWFk
ZSBhY2Nlc3MgdG8gaW5kZXggMTI0IG91dCBvZiBib3VuZHMuICBUaGUgc3Vy
cm91bmRpbmcgY29kZSBvbmx5DQpXQVJOcyBpbiB0aGlzIHNpdHVhdGlvbiwg
dGh1cyB0aGUgZ3Vlc3QgZ2FpbmVkIGEgbGltaXRlZCByZWFkL3dyaXRlDQph
Y2Nlc3MgdG8gc3RydWN0IGt2bV9hcmNoX3ZjcHUuDQoNCjB4MmY4IGlzIG5v
dCBhIHZhbGlkIFZSIE1UUlIgTVNSLCBiZWNhdXNlIEtWTSBoYXMvYWR2ZXJ0
aXNlcyBvbmx5IDE2IFZSDQpNVFJSIE1TUnMsIDB4MjAwLTB4MjBmLiAgRXZl
cnkgVlIgTVRSUiBpcyBzZXQgdXAgdXNpbmcgdHdvIE1TUnMsIDB4MmY4DQp3
YXMgdHJlYXRlZCBhcyBhIFBIWVNCQVNFIGFuZCAweDJmOSB3b3VsZCBiZSBp
dHMgUEhZU01BU0ssIGJ1dCAweDJmOSB3YXMNCm5vdCBpbXBsZW1lbnRlZCBp
biBLVk0sIHRoZXJlZm9yZSAweDJmOCBjb3VsZCBuZXZlciBkbyBhbnl0aGlu
ZyB1c2VmdWwNCmFuZCBnZXR0aW5nIHJpZCBvZiBpdCBpcyBzYWZlLg0KDQpU
aGlzIGZpeGVzIENWRS0yMDE2LTM3MTMuDQoNCkZpeGVzOiA5MTBhNmFhZTRl
MmUgKCJLVk06IE1UUlI6IGV4YWN0bHkgZGVmaW5lIHRoZSBzaXplIG9mIHZh
cmlhYmxlIE1UUlJzIikNCkNjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnDQpS
ZXBvcnRlZC1ieTogRGF2aWQgTWF0bGFjayA8ZG1hdGxhY2tAZ29vZ2xlLmNv
bT4NClNpZ25lZC1vZmYtYnk6IFJhZGltIEtyxI1tw6HFmSA8cmtyY21hckBy
ZWRoYXQuY29tPg0KLS0tDQogYXJjaC94ODYva3ZtL210cnIuYyB8IDIgLS0N
CiAxIGZpbGUgY2hhbmdlZCwgMiBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdp
dCBhL2FyY2gveDg2L2t2bS9tdHJyLmMgYi9hcmNoL3g4Ni9rdm0vbXRyci5j
DQppbmRleCAzZjhjNzMyMTE3ZWMuLmMxNDZmM2MyNjJjMyAxMDA2NDQNCi0t
LSBhL2FyY2gveDg2L2t2bS9tdHJyLmMNCisrKyBiL2FyY2gveDg2L2t2bS9t
dHJyLmMNCkBAIC00NCw4ICs0NCw2IEBAIHN0YXRpYyBib29sIG1zcl9tdHJy
X3ZhbGlkKHVuc2lnbmVkIG1zcikNCiAJY2FzZSBNU1JfTVRSUmRlZlR5cGU6
DQogCWNhc2UgTVNSX0lBMzJfQ1JfUEFUOg0KIAkJcmV0dXJuIHRydWU7DQot
CWNhc2UgMHgyZjg6DQotCQlyZXR1cm4gdHJ1ZTsNCiAJfQ0KIAlyZXR1cm4g
ZmFsc2U7DQogfQ0KLS0gDQoyLjguMQ0K

--0-351776692-1463399991=:4904--
