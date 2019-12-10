X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6117" "Tuesday" "10" "December" "2019" "11:30:58" "+1100" "sandreim@amazon.com" "sandreim@amazon.com" nil "107" nil "^CC:" nil nil "12" nil nil (number mark "        sandreim@ama Dec 10  107/6117  " thread-indent "\"[oss-security] CVE-2019-18960: Firecracker v0.18.0 and v0.19.0 vsock buffer overflow\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-18960: Firecracker v0.18.0 and v0.19.0 vsock buffer overflow" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23933 invoked by uid 550); 10 Dec 2019 11:33:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7364 invoked from network); 10 Dec 2019 00:31:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1575937876; x=1607473876;
  h=to:from:subject:cc:message-id:date:mime-version;
  bh=H7vGP5nIihYPWmZRuGvkUyOC/ugtjbD4Drff0vaKVMs=;
  b=Pfo1Aatc/prmudlfe578DD66C4X+7jhmfKkHXH91pgBS1p0aCXtXmQyc
   XBt9TdCdELyVJMK45l5YBN4vUQhl4Yzp+2pNwBQnYaPdN8m/gjLFxnAZQ
   dswityN5G7rfgqAzwnZoV098eiC/cQ7GS0XDPwR4glLF+ycaX5PpMniqS
   E=;
IronPort-SDR: 74EvSRBbcnoBMevG6ndV04KqJT9m7FMu6MzAoY4gMco2z50g/UHymuq/gEiYXwOYC55kT4t22F
 AuIqSS4nRuEQ==
X-Amazon-filename: pEpkey.asc
X-IronPort-AV: E=Sophos;i="5.69,297,1571702400"; 
   d="asc'?scan'208";a="8347987"
Message-ID: <97042bbb-bf57-23e8-f1d9-75b95df5b9ff@amazon.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
Content-Type: multipart/mixed;
	boundary="------------E1A03F34F84E52EF338B4527"
Content-Language: en-US
CC: "Anthony Liguori (aliguori)" <aliguori@amazon.com>
Date: Tue, 10 Dec 2019 11:30:58 +1100
From: <sandreim@amazon.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2019-18960: Firecracker v0.18.0 and v0.19.0 vsock buffer overflow
To: <oss-security@lists.openwall.com>

--------------E1A03F34F84E52EF338B4527
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64

V2UgaGF2ZSBpZGVudGlmaWVkIGFuIGlzc3VlIGluIHRoZSBGaXJlY3JhY2tl
ciB2MC4xOC4wIGFuZCB2MC4xOS4wIHZzb2NrCmltcGxlbWVudGF0aW9uLgoK
IyBJc3N1ZSBEZXNjcmlwdGlvbgoKQSBsb2dpY2FsIGVycm9yIGluIGJvdW5k
cyBjaGVja2luZyBwZXJmb3JtZWQgb24gdnNvY2sgdmlydGlvIGRlc2NyaXB0
b3JzCmNhbiBiZSB1c2VkIGJ5IGEgbWFsaWNpb3VzIGd1ZXN0IHRvIHJlYWQg
ZnJvbSBhbmQgd3JpdGUgdG8gYSBzZWdtZW50IG9mCnRoZSBob3N0LXNpZGUg
RmlyZWNyYWNrZXIgcHJvY2VzcycgaGVhcCBhZGRyZXNzIHNwYWNlLCBkaXJl
Y3RseSBhZnRlcgp0aGUgZW5kIG9mIGEgZ3Vlc3QgbWVtb3J5IHJlZ2lvbi4g
Rm9yIHJlYWRzLCB0aGUgYWNjZXNzaWJsZSBzZWdtZW50J3MKc2l6ZSBpcyA2
NCBLaUIuIEZvciB3cml0ZXMsIHRoZSBhY2Nlc3NpYmxlIHNlZ21lbnQgaXMg
bGltaXRlZCBieSB0aGUKaG9zdCBMaW51eCBrZXJuZWwgdG8gYSBzaXplIGRl
ZmluZWQgaW4gL3Byb2Mvc3lzL25ldC9jb3JlL3JtZW1fbWF4LiBXZQpleHBl
Y3QgdGhlIHZhbHVlIG9mIHJtZW1fbWF4IHRvIGJlIG9uIHRoZSBvcmRlciBv
ZiBhIGZldyBodW5kcmVkIEtpQiB0bwphIGZldyBNaUIuCgojIEltcGFjdAoK
VGhpcyB3aWxsIGdlbmVyYWxseSByZXN1bHQgaW4gYSBzZWdtZW50YXRpb24g
ZmF1bHQsIGJ1dCByZW1vdGUgY29kZQpleGVjdXRpb24gd2l0aGluIHRoZSBG
aXJlY3JhY2tlciBob3N0LXNpZGUgcHJvY2VzcyBjb250ZXh0IGNhbm5vdCBi
ZQpydWxlZCBvdXQuCgojIFZ1bG5lcmFibGUgU3lzdGVtcwoKT25seSBGaXJl
Y3JhY2tlciB2MC4xOC4wIGFuZCB2MC4xOS4wIGFyZSBhZmZlY3RlZC4gT25s
eSBGaXJlY3JhY2tlcgptaWNyb1ZNcyB3aXRoIGNvbmZpZ3VyZWQgdnNvY2sg
ZGV2aWNlcyBhcmUgYWZmZWN0ZWQsIGFuZCBvbmx5IGlmIG9uZSBvcgptb3Jl
IHZzb2NrIGRldmljZXMgYXJlIGluIGFjdGl2ZSB1c2UgYnkgYm90aCBob3N0
IGFuZCBndWVzdC4KCiMgTWl0aWdhdGlvbgoKUGF0Y2hlZCBiaW5hcmllcyBm
b3IgdGhlIGFmZmVjdGVkIHZlcnNpb25zIGhhdmUgYmVlbiByZWxlYXNlZCBh
cwpGaXJlY3JhY2tlciB2MC4xOC4xIFsxXSBhbmQgRmlyZWNyYWNrZXIgdjAu
MTkuMSBbMl0uCklmIHlvdSBhcmUgdXNpbmcgRmlyZWNyYWNrZXIgdjAuMTgu
MCBvciB2MC4xOS4wICwgd2UgcmVjb21tZW5kIHlvdSBhcHBseQp0aGUgcHJv
dmlkZWQgZml4LiBJZiB5b3UgYXJlIHVzaW5nIEZpcmVjcmFja2VyIHYwLjE3
LjAgb3IgYmVsb3csIHlvdSBkbwpub3QgbmVlZCB0byB0YWtlIGFueSBhY3Rp
b24uCkluIGEgcmVtb3RlIGNvZGUgZXhlY3V0aW9uIHNjZW5hcmlvLCB1c2Vy
cyBydW5uaW5nIEZpcmVjcmFja2VyIGluIGxpbmUKd2l0aCB0aGUgcmVjb21t
ZW5kZWQgUHJvZHVjdGlvbiBIb3N0IFNldHVwIHdpbGwgc2VlIHRoZSBpbXBh
Y3QgbGltaXRlZAphcyBmb2xsb3dzOiBhIG1hbGljaW91cyBtaWNyb1ZNIGd1
ZXN0IHRoYXQgd291bGQgbWFuYWdlIHRvIGNvbXByb21pc2UKdGhlIEZpcmVj
cmFja2VyIFZNTSBwcm9jZXNzIHdvdWxkIGJlIHJlc3RyaWN0ZWQgdG8gcnVu
bmluZyBvbiB0aGUgaG9zdAphcyBhbiB1bnByaXZpbGVnZWQgdXNlciwgaW4g
YSBjaHJvb3QgYW5kIG1vdW50IG5hbWVzcGFjZSBpc29sYXRlZCBmcm9tCnRo
ZSBob3N0J3MgZmlsZXN5c3RlbSwgaW4gYSBzZXBhcmF0ZSBwaWQgbmFtZXNw
YWNlLCBpbiBhIHNlcGFyYXRlCm5ldHdvcmsgbmFtZXNwYWNlLCB3aXRoIHN5
c3RlbSBjYWxscyBsaW1pdGVkIHRvIEZpcmVjcmFja2VyJ3Mgc2VjY29tcAp3
aGl0ZWxpc3QsIG9uIGEgc2luZ2xlIE5VTUEgbm9kZSwgYW5kIG9uIGEgY2dy
b3Vwcy1saW1pdGVkIG51bWJlciBvZiBDUFUKY29yZXMuCgpbMV0gaHR0cHM6
Ly9naXRodWIuY29tL2ZpcmVjcmFja2VyLW1pY3Jvdm0vZmlyZWNyYWNrZXIv
cmVsZWFzZXMvdGFnL3YwLjE4LjEKWzJdIGh0dHBzOi8vZ2l0aHViLmNvbS9m
aXJlY3JhY2tlci1taWNyb3ZtL2ZpcmVjcmFja2VyL3JlbGVhc2VzL3RhZy92
MC4xOS4xCgpCZXN0IFJlZ2FyZHMsCkFuZHJlaSBvbiBiZWhhbGYgb2YgdGhl
IEZpcmVjcmFja2VyIG1haW50YWluZXJzIHRlYW0uCgoKCgpBbWF6b24gRGV2
ZWxvcG1lbnQgQ2VudGVyIChSb21hbmlhKSBTLlIuTC4gcmVnaXN0ZXJlZCBv
ZmZpY2U6IDI3QSBTZi4gTGF6YXIgU3RyZWV0LCBVQkM1LCBmbG9vciAyLCBJ
YXNpLCBJYXNpIENvdW50eSwgNzAwMDQ1LCBSb21hbmlhLiBSZWdpc3RlcmVk
IGluIFJvbWFuaWEuIFJlZ2lzdHJhdGlvbiBudW1iZXIgSjIyLzI2MjEvMjAw
NS4K

--------------E1A03F34F84E52EF338B4527
Content-Type: application/pgp-keys; name="pEpkey.asc"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment; filename="pEpkey.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----=0A=
=0A=
mQGNBF3YA18BDADbZuBY2y7yv1jypAw0ue65kAT+sTsIK2DOpUy1TqN3M+j+UGAx=0A=
7U+vhcw90BKhSrCdYgNZt0Xz8/sw0okXHSye0R1EPdxemu2ArV85GZjLhw95Ng3e=0A=
41gqbtAXEXdEhq1tPJdHhEeHuMfUEz5Ix2Is0j++cf5sWI1d1DuPferRmOsnuRmk=0A=
9RPcjAtRHs5X7Y9etGroHW6nmZ4iU543M3NU80h7NRQNpqhHrOr22olEuUHX7eVQ=0A=
4seVSk7/+/hWPxBI3mMVv8rhqDVEEB4orhSsKgLQSNfvsJJHv3+JIk809BImYmED=0A=
5Xf95PEfYJLnVtB8Ao4J3UWfOFXwUWeZPiaH8KaMw1N1J/r6YHG5ret17H/qZrEv=0A=
tEBwEppsv+rPsDyxwiTOfcfvKCYJSgkipX8TXNeVXcvLCLEo0UZV5nTuuHP18+Xb=0A=
7AxUk1qHWssYTIXLg9ngr9ZpzxWHUEV1tThpVwMRN5ePzWLRnvSbIVZ4KuFQLPuy=0A=
VKHHHV4/tffHH9UAEQEAAbQpc2FuZHJlaW1AYW1hem9uLmNvbSA8c2FuZHJlaW1A=0A=
YW1hem9uLmNvbT6JAdQEEwEIAD4WIQRJv88gzH6kpaz0hsliQ52RepXgtQUCXdgD=0A=
YAIbAwUJAeEzgAULCQgHAgYVCgkICwIEFgIDAQIeAQIXgAAKCRBiQ52RepXgtfRT=0A=
DACO1xpN4OK0BO9nnZt4cVwXkbCnY1z1glEuagRpKcl/at/I6KElD8QWEMYMCcqn=0A=
BBLQjoCkhAQdWju7GvUburWiWktH4Z+H+6TfeDAK6Nx79tPxoxsspVDAvn4ynj5s=0A=
368ITCfBNmOeuy6HJRSELCFc1ZuvcPHEoMNrfIGSZEQC+gmKLyblkBAcWiAbbi7Y=0A=
SqjEH6lsdjEqaONM7ttakm+wDVTcTtpNIedOfegDC0/qq4cA9499sitWn41/82dD=0A=
r9B7j43CDeG95o4ckuIA+NiIwJmjyFeAaNDQW2KxavaXFIM6a8TawhKTTs4Mz1nL=0A=
MOzYmiXbsYTC5KdKyB8UfEsQJwcYV6RdXvxuagx0mCXi0AN6dkeGjifcj1E7jCH0=0A=
/7p9ry93Fc+9Sk1gMSbqfvUUHQSqjrJj6H1PgpI49yYp6eufiJNueTqW0BqXBkWM=0A=
K24FDk1JT17RldD0x6bFVAFjWKWU85JTg85+2wLeacJ6LPCyamkM9nojYe3ZRhx+=0A=
NSi5AY0EXdgDXwEMANSZr6e4U/0UrW1jRETpaczpaooA/YIJAcLm7sMbsBXozt2I=0A=
bqt00WXhowLIsOHhMoilUDbKYsqmoVNLCw7aw298O8mfOTlY0k72jH0SP9BZlkO8=0A=
XRQfOvWaY47nKN0nFr3hNqoymVrzzjLldf8bO0RWUg7zmGuxvP8+zriSain9el/S=0A=
Dy1Crh6aDgdaXmtQ82tlK1+tuEYmBIBCkxydHPgJI4BKbC3cBMfmdFZgNWVryfp0=0A=
2o7lDfucaltHF1iyVPOuWol0qFbOFz8q5bVzg9cF8Ow+jiWv3C3fjfAm9COUmArh=0A=
qF5bE9HQ/49TERPP/DOB01y6RYBiKqyIBWXvE0Byluh18lm0uDwmULOoVKktLey9=0A=
RexSHI6AaHn/2b5cwgxTGP3XB8HeT1qy249OOEZ/fayMcP4S8Ht2jPyteO17cqlG=0A=
sVo7mdwuBkY7NJGkIWinErUfpIb3I7naxLYIh1ZNBwhiY1EAKh1P3R74fplt62Ln=0A=
NTcXOZ5xsEQgV6j+qwARAQABiQG8BBgBCAAmFiEESb/PIMx+pKWs9IbJYkOdkXqV=0A=
4LUFAl3YA18CGwwFCQHhM4AACgkQYkOdkXqV4LXtDAv8D3axJ9dz9JCkbRMRZgji=0A=
dOFa+l0EY70D8w6VtEZbTN3OnFbohV3QttfnilaPO87EvhI4vu8mGQb0024jiR2V=0A=
L73gs87ZSBk7pVN6mA3dOBDRw71KdftrwduCbfxVj1ZsHLlmQYPvl5ea3TBMhm/i=0A=
ft15aHBXkNxYvt9DoA2B/Lkw6g2eUvLAI77V+EFX9IKNOPGC6HvYuirYw++96NXv=0A=
1MOc1qt69K4qaPcHFEUjrHSjVmrTsIHifhCNvlaKaH4p4Q/ntKVe0TR4hL78CIbo=0A=
LEFFU/RjDKnIMAfaCjUGvfwJ7lZwo9Fnv3jTr+58tDYahOUmyTwKx/sXl1ECAD/l=0A=
q36xCvKol+fE/2WV79OpHCEZ4QiXxuXsWoQWjo7lp+SKmSFz8XUI7rH2cCiqiXVt=0A=
ubNkeuUQhSij3TbmrkQHhMtCxMNAgZIjGk5ZcC5relqX3WC8JSI+Jl+nA+DSiWzF=0A=
fs5AxdRoc0LQ5GLFwy0o8GCpWzzXMmEnUx5AeS3k6WiB=0A=
=3DFYyn=0A=
-----END PGP PUBLIC KEY BLOCK-----=0A=

--------------E1A03F34F84E52EF338B4527--

