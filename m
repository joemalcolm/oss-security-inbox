Received: (qmail 14114 invoked by uid 550); 31 Jan 2024 14:56:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6007 invoked from network); 31 Jan 2024 07:47:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1706687394; bh=jV7eiD7fOM/I6EwhVkHq1+Eo6QiwDvjjYpvN2ghClFI=;
	h=From:To:Cc:Subject:Date;
	b=KuJ6zZOtKs7pdTAwlYQ/xJiqLqHGJLdI8zY3JlJ3rRoHWRtII1pYHwHBjp82cKJgU
	 lhtN8yHzVpzJ6jtvjmxfg9FKZ3JqaIRe6auliXfrB7Rh2cGJsFiJD5Oufwa5Bb4KIQ
	 MxsRL8IhdtOXiP3ZKKTKavxM6YcQVciH/IYtvG3Q=
X-QQ-FEAT: oHWrrGTW1dB90KkqvZeZMdwaHaWp1m6+
X-QQ-SSF: 00000000000000F0000000000000
X-QQ-XMRINFO: OD9hHCdaPRBwq3WW+NvGbIU=
X-QQ-XMAILINFO: N0RenLD8cuD5EYFrxkGm+cEl9d0KkF/TUgJw/MXGjoVT8ZhWq7eJowwOBXJ0fT
	 O6Ks4d45yKmTDF9XlodQ8DTohQcntd8UToxdDbuPfNA9uAy8gP5ep6Zmu8fHlFGZxl2hHgql1B1bU
	 1mQMzQhtRKgtWWF7a/6OOkMYbRQ1g/Kv2tlJtvAm4KVJdsSSdXPOhxIN4rG2TAJ+GgIV9jS+9GrQZ
	 bQvF6iRA1V06pWj1OBzZLU083RSYMnp26QoDfiPHhQPctz1Czvhb2MxQeRf4GO6Piq7jiVenAmlHk
	 4HvznOSrIcwXuuTA0iCmP/40I6gdBSM2QrhkKM4covCSaQ41Q/9yZIRjILbfl78SZy7OmDeGhuwnC
	 /5HSsQidAJ1E8G0SZNNJx4SixKY+vNvomj6WPcFZRhT2o7fLONLyaPVxKQTVLofkwcJkQo9+X8Z/T
	 3agYAydmszLQ9dfXHdg56z5YvAudf0lchjNT26FdOMGBal3hUvUq9mR4yHmUtEAY9JVzvSwnuDXS6
	 bToh4VMxDsgngP2oNEVcB1BCvJvWbg3oqt98bLaKRAngXRIC6lFpx4o6qy583Mtupup7gWjxA+1yf
	 hw4UIZPNO9b4Ksa2+MBJqa/B3Eqxqpgry+b1KikIktTVyqPdbQgktjh+GE/91dVbt7qlYrCeylgB7
	 EMZ5JHAOsCAQpkQ2zirb03WfroOeHDemJMDZtS+6ig7Nqv/I0fSFy3M1S7UD/87xqMbDCWiSKVsAy
	 gW+c17/44ln2IK4FOh7NklurdcYNlPFOhEpQgE0x5EJzWP7XaIJzxzXyScCpYOiGi41SvgLW5PWmH
	 EE97kSKMkYOyBo/WFeePNCGJv7KEOVqORMoF9y35ZCvDaguv2+wlrewNBo57Wu8xcoQb4SFZYjbCF
	 1xKaomrJUwPXX+B7HZjyjEkPZ7HdBwMGRHNcYvtnNArgT9l2yv8Bqdm23N36RpJVZ+Cu3PA7cw=
X-HAS-ATTACH: no
X-QQ-BUSINESS-ORIGIN: 2
X-Originating-IP: 119.8.203.210
X-QQ-STYLE: 
X-QQ-mid: webmail343t1706687394t932950
From: "=?gb18030?B?YmlzbXk=?=" <bismy@qq.com>
To: "=?gb18030?B?b3NzLXNlY3VyaXR5?=" <oss-security@lists.openwall.com>
Cc: "=?gb18030?B?ZGV2?=" <dev@servicecomb.apache.org>
Mime-Version: 1.0
Content-Type: text/plain;
	charset="gb18030"
Content-Transfer-Encoding: base64
Date: Wed, 31 Jan 2024 15:49:54 +0800
X-Priority: 3
Message-ID: <tencent_6687C25A542A43764828D914ED19B2B6F205@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
Subject: [oss-security] CVE-2023-44313: Apache ServiceComb Service-Center: attacker can perform SSRF through the frontend API 

QWZmZWN0ZWQgdmVyc2lvbnM6CgotIEFwYWNoZSBTZXJ2aWNlQ29tYiBTZXJ2
aWNlLUNlbnRlciB0aHJvdWdoIDIuMS4wCgpEZXNjcmlwdGlvbjoKClNlcnZl
ci1TaWRlIFJlcXVlc3QgRm9yZ2VyeSAoU1NSRikgdnVsbmVyYWJpbGl0eSBp
biBBcGFjaGUgU2VydmljZUNvbWIgU2VydmljZS1DZW50ZXIuIEF0dGFja2Vy
cyBjYW4gb2J0YWluIHNlbnNpdGl2ZSBzZXJ2ZXIgaW5mb3JtYXRpb24gdGhy
b3VnaCBzcGVjaWFsbHkgY3JhZnRlZCByZXF1ZXN0cy5UaGlzIGlzc3VlIGFm
ZmVjdHMgQXBhY2hlIFNlcnZpY2VDb21iIGJlZm9yZSAyLjEuMChpbmNsdWRl
KS4KClVzZXJzIGFyZSByZWNvbW1lbmRlZCB0byB1cGdyYWRlIHRvIHZlcnNp
b24gMi4yLjAsIHdoaWNoIGZpeGVzIHRoZSBpc3N1ZS4KCkNyZWRpdDoKCsvV
ILCyICAoZmluZGVyKQoKUmVmZXJlbmNlczoKCmh0dHBzOi8vc2VydmljZWNv
bWIuYXBhY2hlLm9yZy8KaHR0cHM6Ly93d3cuY3ZlLm9yZy9DVkVSZWNvcmQ/
aWQ9Q1ZFLTIwMjMtNDQzMTM=
