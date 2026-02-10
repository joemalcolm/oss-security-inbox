Received: (qmail 21941 invoked by uid 550); 10 Feb 2026 18:33:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 8088 invoked from network); 10 Feb 2026 18:25:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770747935; x=1771352735; darn=lists.openwall.com;
        h=autocrypt:subject:from:to:content-language:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=bc2SfZvox851vgy2OIQOF98IKghKSjp10/dAsdgfTNs=;
        b=S5iKk8g7kKIv/RVpD47Bw3cJ/NrYkJCdKNYVJmmAOCAPgkxvGalLXPQPKNoCrrmeSZ
         L4c2dXFK3RK05ov73fkR/X9oRlhafRN0SogZEaQlqybcuEAWawo5tMfnF+v/gAhSshb+
         y0ID/vPpvbE1RcLOS4W196W1K4VXWWCZcUAdaFnFXWkP25Mz/IhyfnFiepojWX7rIRHB
         QzlqFbGEXcR+viJRWANQ7Hc9nCLUT4tWX8FziHQwDP3G3UusI+NSsVMjF2LbNoR+I/GU
         tnsyju7qTyereOE7/EmOLh2SZZrhb34m72QCHMjFxoEUmfE6aJu2p5DKI/i0SF4Iomc9
         h72g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770747935; x=1771352735;
        h=autocrypt:subject:from:to:content-language:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bc2SfZvox851vgy2OIQOF98IKghKSjp10/dAsdgfTNs=;
        b=dJn87YFis6zbsjlxYDuHJUcxG+yonC354tlJTONAnMMNMCZUiHoyQdC9o5yRRi9Ltr
         AiprNqLVGMw5YFHYsrRez/vRgBwXEm58ZoueGHEdpglaJoC6YPTTQ1Vbvj39dfM2RI4c
         3gWQBtw9HMFevTUB146WRnz06Uw4YSeVbB0cXDfAnueJkNouG4AXXpCFs1fNfNpXTvpV
         yJXaCNRE/GpMvYG2Y6/iLQy3hd0cT6aqvdrPY9hTsBcweI7EcKDMQJylb8bunAZxEzwz
         vzQZpFur1CMjGIrLy2M2+y6A6lOFPY2KvebXqdRFnjr1TkBcYDslAd/F/slL+j1hDw7o
         kxCQ==
X-Gm-Message-State: AOJu0Yyna2pE/2jPbkP4X2W85ryyV264+CWzR1zfB+12sDgk9o5zFOid
	PHw66K+XgtWk7ZEgMtS95QvBU49hVGxSnhicVBtO43JYugUS1aoZeqgiQuBa+ty+
X-Gm-Gg: AZuq6aIG5ipWZ655UU0UJ2mdfAyaauAxfQHMaIzSxGtx2TLhbiSmS+zfEFoUsRza03e
	GcZv4nUe7gZdc/K8wVse8DPyqR6/qWslwK/DIXvHDHy+CWx2/HbHjsnRXb6BqAmI7tinOu6Y2bf
	8qvLHO7HUUaC0TUer7Y8JKd4CZjPZsNtLlJsesOJaHCYNz8GMS451KxHQGK7RIhIfzqOrlgJ6MZ
	5k5Pynq0koXbAxc8ZFCFR4Fy4o7gbLN4+ul6GAzzm4I7VJrFMvkDm0qOwlo9+sFfEJnn0AsqjF3
	ash7t0aytkd2raeUbJupTOswnC6HPFzT2jXSaJXCF2H3doQ3ez1eIK+2dzCdr5Q20Yl/hXR4dqj
	dWkIpBcTZaHomV2bzf7Wgdzll5LV7X/H7VdTogTgQRN+yNYJL/9AFbiNOLozukpjynliQHTKWyX
	mNA7KPPuTdb1haZo8N2MQrS057pBBcZ5JUojqs7QNa/JeULiF/mZhOLHjAPayyNCqH4qiuh+vuV
	4oLUMmfJNVV2pYcrkeg4Lh5n6bS8WLDP7z/REU8cNlumCUZYuRf9/h2tA==
X-Received: by 2002:a05:7301:9bc2:b0:2b7:32a6:82bc with SMTP id 5a478bee46e88-2b85672111fmr6171858eec.26.1770747934268;
        Tue, 10 Feb 2026 10:25:34 -0800 (PST)
Message-ID: <05b52c22-8676-47aa-965d-c2e8194e451d@gmail.com>
Date: Tue, 10 Feb 2026 10:25:32 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Chris Dunlap <chris.m.dunlap@gmail.com>
Autocrypt: addr=chris.m.dunlap@gmail.com; keydata=
 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
 7zhj51lsaXgMZyKOjmzQ1fi114xbZeLq0Q==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------SV2Xt3mQkMYZ5hrmqrmmSP8D"
Subject: [oss-security] CVE-2026-25506: MUNGE 0.5-0.5.17 buffer overflow allowing key leakage

--------------SV2Xt3mQkMYZ5hrmqrmmSP8D
Content-Type: multipart/mixed; boundary="------------nyAgWcfpuLXjaezmqk7UQzpi";
 protected-headers="v1"
From: Chris Dunlap <chris.m.dunlap@gmail.com>
To: oss-security@lists.openwall.com
Message-ID: <05b52c22-8676-47aa-965d-c2e8194e451d@gmail.com>
Subject: CVE-2026-25506: MUNGE 0.5-0.5.17 buffer overflow allowing key leakage

--------------nyAgWcfpuLXjaezmqk7UQzpi
Content-Type: multipart/mixed; boundary="------------AW9ymFXfbAOF0ZcsintwH5C0"

--------------AW9ymFXfbAOF0ZcsintwH5C0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

QSBidWZmZXIgb3ZlcmZsb3cgdnVsbmVyYWJpbGl0eSBpbiBNVU5HRSBhbGxvd3MgYSBsb2NhbCBh
dHRhY2tlciB0byBsZWFrIA0KY3J5cHRvZ3JhcGhpYyBrZXkgbWF0ZXJpYWwgZnJvbSB0aGUgbXVu
Z2VkIGRhZW1vbiBwcm9jZXNzIG1lbW9yeS4gV2l0aCANCnRoZSBsZWFrZWQga2V5IG1hdGVyaWFs
LCB0aGUgYXR0YWNrZXIgY291bGQgZm9yZ2UgYXJiaXRyYXJ5IE1VTkdFIA0KY3JlZGVudGlhbHMg
dG8gaW1wZXJzb25hdGUgYW55IHVzZXIgdG8gc2VydmljZXMgdGhhdCByZWx5IG9uIE1VTkdFIGZv
ciANCmF1dGhlbnRpY2F0aW9uLg0KDQpUaGUgdnVsbmVyYWJpbGl0eSBhbGxvd3MgYSBidWZmZXIg
b3ZlcmZsb3cgYnkgc2VuZGluZyBhIGNyYWZ0ZWQgbWVzc2FnZSANCndpdGggYW4gb3ZlcnNpemVk
IGFkZHJlc3MgbGVuZ3RoIGZpZWxkLCBjb3JydXB0aW5nIG11bmdlZCdzIGludGVybmFsIA0Kc3Rh
dGUgYW5kIGVuYWJsaW5nIGV4dHJhY3Rpb24gb2YgdGhlIE1BQyBzdWJrZXkgdXNlZCBmb3IgY3Jl
ZGVudGlhbCANCnZlcmlmaWNhdGlvbi4NCg0KSW4gSFBDIGVudmlyb25tZW50cyB3aGVyZSB3b3Jr
bG9hZCBtYW5hZ2VycyBhbmQgb3RoZXIgc2VydmljZXMgdXNlIE1VTkdFIA0KZm9yIGF1dGhlbnRp
Y2F0aW9uLCBmb3JnZWQgY3JlZGVudGlhbHMgY291bGQgcG90ZW50aWFsbHkgZW5hYmxlIA0KcHJp
dmlsZWdlIGVzY2FsYXRpb24uDQoNClRoZXJlIGlzIG5vIGluZGljYXRpb24gdGhpcyB2dWxuZXJh
YmlsaXR5IGlzIGJlaW5nIGV4cGxvaXRlZCBpbiB0aGUgDQp3aWxkLiBUaGUgdnVsbmVyYWJpbGl0
eSB3YXMgZGlzY292ZXJlZCBkdXJpbmcgYSBzZWN1cml0eSBhdWRpdCBhbmQgDQpyZXNwb25zaWJs
eSBkaXNjbG9zZWQuDQoNCkNWRS0yMDI2LTI1NTA2DQpTZXZlcml0eTogSGlnaCAoQ1ZTUyA3Ljcp
DQpBdHRhY2sgVmVjdG9yOiBMb2NhbA0KQWZmZWN0ZWQ6IE1VTkdFIDAuNSB0aHJvdWdoIDAuNS4x
Nw0KRml4ZWQ6IE1VTkdFIDAuNS4xOA0KDQpSZWxlYXNlOiBodHRwczovL2dpdGh1Yi5jb20vZHVu
L211bmdlL3JlbGVhc2VzL3RhZy9tdW5nZS0wLjUuMTgNCkFkdmlzb3J5OiANCmh0dHBzOi8vZ2l0
aHViLmNvbS9kdW4vbXVuZ2Uvc2VjdXJpdHkvYWR2aXNvcmllcy9HSFNBLXI5Y3ItamY0di03NWdo
DQoNClVzZXJzIHNob3VsZCB1cGdyYWRlIHRvIE1VTkdFIDAuNS4xOCBvciBhcHBseSB2ZW5kb3It
c3VwcG9ydGVkIHVwZGF0ZXMgDQp0aGF0IGluY2x1ZGUgZml4ZXMgZm9yIENWRS0yMDI2LTI1NTA2
LiBTaXRlcyBzaG91bGQgc2NoZWR1bGUgYXBwcm9wcmlhdGUgDQptYWludGVuYW5jZSB3aW5kb3dz
IHRvIHJlZ2VuZXJhdGUgTVVOR0Uga2V5cyBhZnRlciBwYXRjaGluZy4gU2VlIHRoZSANCmFkdmlz
b3J5IGZvciBjb21wbGV0ZSBtaXRpZ2F0aW9uIGd1aWRhbmNlLg0KDQpSZXBvcnRlZCBieSBUaXRv
dWFuIExhemFyZCAoTEVYRk8pLg0KDQpDaHJpcyBEdW5sYXANCk1VTkdFIE1haW50YWluZXINClBH
UDogQTQ0MSA4ODBDIDNENEMgN0MzNiBDNUREIDQxRTEgM0I3RSBDQjJCIDMwREUgMDg3MQ0KS2V5
OiBodHRwczovL2dpdGh1Yi5jb20vZHVuLmdwZw0KDQo=

--------------AW9ymFXfbAOF0ZcsintwH5C0
Content-Type: application/pgp-keys; name="OpenPGP_0x3B7ECB2B30DE0871.asc"
Content-Disposition: attachment; filename="OpenPGP_0x3B7ECB2B30DE0871.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----=0A=
=0A=
xsFNBE6HRzwBEADIP0Sl4/O7f2OKrYit3/NaF8wCTgbByyYiE9f874HpHtyTnxt5=0A=
09vkd/dB/QgTuqnFZtCoIOR9QhWmJW8DuVBxd9Uq1twIOXUQ1b1aa2T66DjfMkF8=0A=
YAmWRIrJGfq1T7viEyLEc0jCvO6kB9danN60/BXt5gxJcvH53itacuymhHwtFyjx=0A=
juuP9z8b8VMUY2kWziytxNRhc2S4WA9LxLrK5uodG+4eEE/qf3w7ViIOI8JU+4tx=0A=
rzaIsfWLN3iQ3uv3Bdfa+Iq1nEXeLK0eDYO8DNGr/Qx849YYzK1Z+VPLZDNB7Y1s=0A=
5ahNFiUqBn+O+uL2qwqTY4czpqBB1oafkpXfth6B6LyySR2BaG/SoAm09fS7egjp=0A=
+IG2ujixvb4JcN7p8LePZsn0Ir74h2QURF9yyOHFJHQwhwrNuyK34XCsiz1rVp54=0A=
eC2D1NaA2rS3ZH7gJE5toG4BXkOX26p9xUGZfO6DiDNFJd4Q7OJLctmmwdug5jIC=0A=
OSRmU/JvRq5XjnsVTmlS6rKiiKXUNslND44uSQgZiUjTBAzNu8CsfImui0pozPvA=0A=
I7Rbe4U8erg4kCpyo27JoLcEpz2xhk80GYwdMCllGlc2AezUEHXBiSoSNIGehiGM=0A=
ZYXD1jnkU0IMQRk+sg9QnOCAeYQv1fXZYvIfOkqOJ33/3dHdJQGaTnljsQARAQAB=0A=
zR9DaHJpcyBEdW5sYXAgPGNkdW5sYXBAbGxubC5nb3Y+wsGOBBMBCgA4AhsDBQsJ=0A=
CAcDBRUKCQgLBRYCAwEAAh4BAheAFiEEpEGIDD1MfDbF3UHhO37LKzDeCHEFAl36=0A=
za8ACgkQO37LKzDeCHFnYw/+MwyhLL2D/DYOpwTV4EgbfS66L4a3fzWugwAZp56c=0A=
ydyWjVrA73iO/emYBs2eWbxE4wn2RgaU1gLX+kCgy4oVIT+u/+wIZHSTDgEwHQMD=0A=
xfSiUV3BugZxphhVn6AqGScxKfro8YG1ZtfRS0oU6o5s6JkzA/LjDGAzZ0z1hi5w=0A=
2MugLctP8VNrG96auk+w2X8Qvy0iDrh/uV8UDdQ+wIRypYJHF4VW4ruWlQOCFJeE=0A=
wveaJoS1eoC4Ih026IvXOueqlVIv2Z54BVGhBh5U3RGYxXW0U1kb7//lsQF/p690=0A=
DBI4jeHRN+ZzFdZN7ODNPhH75JitqJ27oykiwDZGbZh9WkdzLNDl8XzId09zwwJE=0A=
XTyyZhOb+UutvnX6DNH+C4qRWWsh23YdWlJwoe3WEJjW7R2nQ61yGvUQ64u8iWcD=0A=
pKEkSjgv4SViRpLM3yhbHbeksKr/tPyxv0WqGwrxBUvwmx1AlFrmbcg/fc7uBppP=0A=
/gVME0PeQE3Ajn5BH1SboXHG2r5aayMmnbrKevMRtzbPlHOQTQJWyPfFloKeJJc9=0A=
R0KM6FLVG+Emv3T0C4ZhYS7XAErnop/MlhbulHaQYuOtsM5d1od2guF+V8yEKTng=0A=
DiXZiLeIxYkR0llmBro9PcrURTwKc+r341NihcxedGzw1CSb06KPEgtNJdwZVqoQ=0A=
WZrNG0NocmlzIER1bmxhcCA8ZHVuQGltc2EuZWR1PsLBdwQTAQgAIQUCToeGaQIb=0A=
AwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgAAKCRA7fssrMN4IcXTUD/48qwiJO2I7=0A=
RYsjqOnSmoXDgGrCQzLH1pxQ9DEIkR+Zp129+egGcMvZ9962fEGP1ObJQ3veHDSA=0A=
NCcvRGm2RcLHDWzXHO18RK0k9x1y6xsp3/In67cm3Q5T+FOL+axKw0GGfJgzYrTy=0A=
Nu3IZzeIb13nexnbFJc9bDeV0xcDvhH0QAci5kh90eH6fX609jPhXWNj7YUKdT1w=0A=
zNnOGo7YEZqk+IsSIMc1lRitnYQR4dkht7qq3Z/SjwJe25wH/jr7cqvm+zKzDTH9=0A=
r7LTSN9locCl/kcTdzsV+R9Bzo506asb1VT5oaYIhJzAUyVenC2Jxt/TlE5HeLxU=0A=
jHW5oE5hFRs11jsNDmIlwME4FRYjrnbCU2an1VY1IXzwhSHT4LuZBlNs56JXVUFY=0A=
BlYSr0foyXmf1d272gjNae0gGqCBee8ZJbk12ByYl6hzWzd+DkgXszdKjZYtWDGp=0A=
Rmgs9AHyktMgRgLxF2iyT961T1BmiGDVo7oaIHjsnRTaakthpBhmtQN2bJnij+rG=0A=
zKeMWGKNl0y2cwiyU03Zgc10bBfyqBt9xxE54gtk/s9V3K/JcQK5wMcV1CSN57QR=0A=
Vv2h21C3qg36x3SC2eejoXPxyIxYJBSR8PIWfEA2uyW+NyL8XqgI4AwwY1Sm2Yjh=0A=
MdIi8zTAZjWLUJRyJQXM05n5OXigElEZp80nQ2hyaXMgRHVubGFwIDxjaHJpcy5t=0A=
LmR1bmxhcEBnbWFpbC5jb20+wsGRBBMBCgA7AhsDBQsJCAcDBRUKCQgLBRYCAwEA=0A=
Ah4BAheAFiEEpEGIDD1MfDbF3UHhO37LKzDeCHEFAl36za8CGQEACgkQO37LKzDe=0A=
CHF5Yg/+NOIOopxUNkBOetoZkRoy+3lUeg5L91GnVAOt0ZlDmq5+VM2htW731TO0=0A=
JIfkZAwGc2Q+E2e8baP+R7aqHEbDP1w7UGubThOMcBM50J7yhq527f5f+YWQCMUc=0A=
5yDglVO4A8LxInE+EYICxou6MRxc+nyNViooHp5oplBzt71cOgwTi6lCx0NFxa1w=0A=
5imQW7/AY99c4t4sxC+w1A9Yukem7xQYjxx9f/DoaYMt2yMrnW3R51yAAaT4Vbiw=0A=
n0SVqw7H/Wtt0Mq/If9msyt0/cRYA0vAX3ViCHlG5AgnMv9YFzFpizWkBIzlZ+vR=0A=
2JMPCeNkBQQOQL/0rGnKG55jUazobP2gJmfV1TRCGr0pq82cr0e4iLg89qhm1BZi=0A=
42BKnwNb0EYZkI284xmDWnWzW1YwCByc6HX62EEVqd6TEzmWAAtmoaCl9zjUCnmY=0A=
Jth+2SUcf0/O9bTgkMbGPpLVuOf0j4MKfDLFnHT0R+R3eEZjrCIWljDzt2xqmoX7=0A=
7JZK9PvtHJC5Gi2j9j8smVLzJ+vq+1r4FiHJXtgtDOoE8smBJeupObKEvZdTbbLx=0A=
Ff+THLdjN/DqwI5LCvbQtSzdzQsFujec+99kkvV30gLlyUK5ymhTCSa60paOaLZv=0A=
zNrL3yPKB0KweM62YcvEiFMy4bax1vH9W+1R/JsrujdroQmdHzjOwU0ETodHPAEQ=0A=
ANZNNfda/4EW+24swcadXU94i6LRSFCQHwE8IBiSxUFl+ymUvodexDYJADDKC/WW=0A=
XOY+4fH9qR6G0atJIpD6b/xWMFzAtMR0YcQ4m6/En1v+cPYJ/MabLhBOwUKwWDsr=0A=
2sLjgoaVlJEn2u/EIH7FP/PNBT5RODEd2ZInquMYWvz+rFMAWL8x+2k29rGu8Qmh=0A=
S6xk72QYTSzqhvjehzoiCWW8npIRAyR03490WQxIiELTyFQVCMsF0YAcMPSbbUR+=0A=
r/gOwprRuh9fYD7fBjVVlQnbHdEglGrl7S+HdPVnc9WBWdNdz5qi0wyGXK1lWnfV=0A=
WWy4HhSSPAfghOfMf4ps6v051GyN/4Gpj/I91ZcgTHMFpU8uWMGgurnjeGjco+UJ=0A=
Ub6BU3vfBEJ0XkpwGwDwMgbitnsxrsIX8ghAjWDwRqLuD9U8zdXCkGBpwES6FQiM=0A=
1iEZqpi/Q+/wQmy6jNvKEXc6TESCz2q7ATGSRyFL7l2Rq7muclNTThUTHUVSogfJ=0A=
TFtnXd1hvPSsi/wYPMZPRzeBsQlE77QKHmP7AjkeD+DdWuyauFcbxUPL2pBoC+NE=0A=
Vf8MJ2eGcg5J5Ej7g6rKkyg9z31xQzAczwqDeN+jBi3jLQcBNpgWD47BNkQDWKUB=0A=
7qTy0rTzieX0tLiGR0Gvm+Py4lbnlARo1LW5vdnbh9DnABEBAAHCwV8EGAEIAAkF=0A=
Ak6HRzwCGwwACgkQO37LKzDeCHEnqhAAgKc2MiGiK7r4kRuMREW0kmo9e3dMbbH+=0A=
HI7wt44OW0JQ0mZUfOGokVMK7XAQtEQbPcx2ONIfsuUjK4c7/nUuK/08cJhPpYXz=0A=
+21DmAmtrAWWYesLysYzED3gh8B6ifqUIqIYVOHebGEHb4T0cCYn3e5gUmxY2tJM=0A=
X4RreoU8dmgar9e1joQlRKeZjpDrYsJGnEZg6lDgigZJntok/cFeAbt6W2fy8z9Y=0A=
cFamq3Tw7bKtTyu8LnkERF9CVRO3yYzJFip8iHxri3vxyj4RTppzuiDgy7sHJYxh=0A=
9jEliW8kOOv1r6d/WLJNE0olIJ4xz6ddXJ9BbivwSEPcN+jAl4agwAh0zuBXJazt=0A=
u/spGr3gCfYt5MBhcdFt2eVIZcmJAHORaYSXHgscn4H8lbqMG/gUE0wCZt44wSxX=0A=
uR+CzQIaSESHP+3zXodW2WxYZbzAu0ulAHzkyG8FAuNfAz/+tJ+e8g++x/UAlZwH=0A=
fh5M98UzH2N1pMtNFUFFgExU01Cxk1/FMVBqJyC7wKkZN2oP2WLYoW15mesh7l7U=0A=
dtxhHA3M8pK9bmC10xoh3sVNNvxTv3CQlMd/6EfokS7RlRG5vmDCheOPwYfNZJrP=0A=
DWp49sUbRmB1ELz7L5/+m643Tvgl20JpPEjEX3TH+u84Y+dZbGl4DGcijo5s0NX4=0A=
tdeMW2Xi6tE=3D=0A=
=3DFNpf=0A=
-----END PGP PUBLIC KEY BLOCK-----=0A=

--------------AW9ymFXfbAOF0ZcsintwH5C0--

--------------nyAgWcfpuLXjaezmqk7UQzpi--

--------------SV2Xt3mQkMYZ5hrmqrmmSP8D
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEEpEGIDD1MfDbF3UHhO37LKzDeCHEFAmmLeBwFAwAAAAAACgkQO37LKzDeCHHl
BxAApIxHUKMevsiZzMZpikRaqPu/qfNYVhlAToP51iDtmG/F9U2Zfwfs2hZaX8brBVc7laknE/v4
SZGfG/ga77cAZaD7P3szDvkS09TGpByi+2Jk+cjd8aWTw7JAL37LmFIIwH/rBH2wRjPIDmezsEi1
6W/YCHY5Yki2xPUWPRbYUJQ/FwLBSQ/eDQUw6c59WxHLZx+N1ZHoHzFIZ9TlngN11D9Vc6W/ki8s
gm1yfUMF1kcoqILy2R3FzQarfS8OXACFDo0uG1gby3FV6mJJ4uYarrSPhA6l2h4WIlvyY3uH3X63
7IJcNw8Dmb7OARkgp2/g+ymIGZPbZv4fbQqEJ1QEf6PuZneUFUNui3FL2K6U8Z9+IMGq5sStVWBh
P3+w0a4vdnIu+rOhCToF7EwOEzxhZzIMr7KQPdCrOUCmVvtrCPaiGmEUSdrm6/pSipNeIK9Q98CJ
qc0kf6ZwkFG031MwxbpaVB2pxaXskGcIVbgs3doWPZjwxap7jzxv0KZmDYugcWzczGQKjWv+itZU
z49swkA0HrV0zu1VgHoLlq6Su684RvFkbpg87vacNi0dHmaRhvXCB8f2R0+Vn2cAZP8zE+58u1nh
Qhxfxajjmre0Y0pefyBxdkKr1gnZTcCuR9X3oN3ReWdeLrC22uDqmgUWxtytpUe8FKTO3/YPVwvG
plQ=
=D/v2
-----END PGP SIGNATURE-----

--------------SV2Xt3mQkMYZ5hrmqrmmSP8D--
