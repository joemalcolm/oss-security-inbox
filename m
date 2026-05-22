Received: (qmail 25697 invoked by uid 550); 22 May 2026 19:39:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30697 invoked from network); 22 May 2026 16:48:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779468519; x=1780073319; darn=lists.openwall.com;
        h=in-reply-to:autocrypt:from:content-language:references:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ITJphMlGtEu1/IyRqT7TYMXhEnG4hGAF4zVu+RKzkVc=;
        b=NoytFvRqmx7uHpfgDWCoE/oH67HRxVfmoFh/K7Q29luvscMFxQ6uDAp7gBAFNh6Tnp
         gZ1YRxxRagb3LpxaBPRMF64bJ/z8tSxz+DTkZ697ekmiw8t/dC9eFJA3L/rsIudIl1FJ
         7oaUbJbGYPmBetcvmltJZ/eUoWsKGYAs6wMJfQuB3cYpVeYZDrhRLT2DB3tORvCiXwt/
         2ufx/s4mz2G1O67azC9qfOCQQA1urh2P9wMS0D+V0t571tkilPU+SpcWsLXXg2gyMuAa
         GapTg0FLaVzq+hQbY8jH4OCPKkEdzXHjfUBixKl/qU/4f/0I8VRArzYCvDSA8mIGJevf
         0uWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779468519; x=1780073319;
        h=in-reply-to:autocrypt:from:content-language:references:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ITJphMlGtEu1/IyRqT7TYMXhEnG4hGAF4zVu+RKzkVc=;
        b=IAKa2YPjpOBzOpv0EyNxHHGrY2xqEBklxgEHmMx+eVb86+hCcdWB131CiEiohls+0S
         f8GpkAQJ8yjKxK81ebJcK8Sy6eQa4YPdqe+6YGXsoXsncQaYlbUH9KtLdvqvKMs7vBJB
         rGnk0AeiP8KlolPA/vIb8pzSzPmkNwp9LHZiivysrGDkruojwEnIGlVjkjMOGrKEVzkr
         EDGaVxMaVofM+CdtwFmVtQpG6eWrWJT0q9/BX2BiytWnJsN5w5B7pMYqlCSGqpJ/GE+4
         cepNWoPp0N324Y1bdYuQ9z37fjEChAvty1soQ2aZggJNbZ5L92OmMSfY97jNrAL8O8iI
         +4/g==
X-Forwarded-Encrypted: i=1; AFNElJ9RqLDj9ePp8qCtieQQgBhFakQTy3MYKwf9QrRITTU/uIJAhlPlhmCgG+VGqBHsRoSvQPi3ZkD3sKS8QNA=@lists.openwall.com
X-Gm-Message-State: AOJu0YzYPOA7lMvIk17LD2vr3bLPGf317vC41WPj56SqGRwxTJ+26JO0
	yzdDcckvE6nAEG+8O53z7hPvtz98X4TL3MUB+vNZagR8mQFWOTDXgbH3JbpjHg==
X-Gm-Gg: Acq92OElp9VCl5YK/SFRyXZYx4f1TRkld979N7iTPI6FQHla1+8CnI/axPsLLgv47Ia
	g5hf4O6YCvhPF7Ow/e1CG0hTv+4TVg3HpiihaDnRM+yaH6wiz+FS9Ur12Ww+f0/R8oOQAug7mSP
	xMiD633xcE5qPd2TFX8sGWI+xvEh3Q0oXahWigjHxqBpzORESLn0y11ezQq4sw2XJJJJffmKmHj
	hUc74wENygbWLOL7sTlJL58FnXrtX1Gdv/Ex+OJDKqXRUXMAKv8BJC2eiFpPfwedswNrUg995ME
	/bQSsF8gIOhx14R3i1C9XRWlw6Hj9gNN+8O/lEvEyWMzbTML/dTNb2jC1NWZ/0FoHXJLOt7o8aU
	TTG31T8ooagGYbukm2GPkBov1XCrDg5UJNoZ4KpmZQ24A0uXphyYtfxPS0MFJRZVVUAaBr0cCxT
	pjyZoNGR1+m+YE32eSsH10pX2QfvQr
X-Received: by 2002:a05:600c:46cb:b0:489:1c1f:35f1 with SMTP id 5b1f17b1804b1-49042482762mr63493255e9.4.1779468519185;
        Fri, 22 May 2026 09:48:39 -0700 (PDT)
Message-ID: <f9537d1f-b9f8-4cfe-8ace-a303a2a27a01@gmail.com>
Date: Fri, 22 May 2026 18:48:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Michael Catanzaro <mcatanzaro@gnome.org>, oss-security@lists.openwall.com
References: <864598ef-e8a0-49ac-a750-1456d8c9be2b@app.fastmail.com>
 <ce81312b-99e1-4305-a816-e74b2bd1ffd5@app.fastmail.com>
Content-Language: de-DE, en-GB
From: Wolfgang <raveit65.sun@gmail.com>
Autocrypt: addr=raveit65.sun@gmail.com; keydata=
 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
 9nIrAgjPOK+zRMWUtlvXKgzC
In-Reply-To: <ce81312b-99e1-4305-a816-e74b2bd1ffd5@app.fastmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------7w1HyDWBmUd7aRSLeIwguMeF"
Subject: [oss-security] Re: Evince/Atril/Xreader command injection CVE-2026-46529

--------------7w1HyDWBmUd7aRSLeIwguMeF
Content-Type: multipart/mixed; boundary="------------JZZN9RNukWhT6mTh9qA0gOKr";
 protected-headers="v1"
Message-ID: <f9537d1f-b9f8-4cfe-8ace-a303a2a27a01@gmail.com>
Date: Fri, 22 May 2026 18:48:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Evince/Atril/Xreader command injection CVE-2026-46529
To: Michael Catanzaro <mcatanzaro@gnome.org>, oss-security@lists.openwall.com
References: <864598ef-e8a0-49ac-a750-1456d8c9be2b@app.fastmail.com>
 <ce81312b-99e1-4305-a816-e74b2bd1ffd5@app.fastmail.com>
Content-Language: de-DE, en-GB
From: Wolfgang <raveit65.sun@gmail.com>
Autocrypt: addr=raveit65.sun@gmail.com; keydata=
 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
 9nIrAgjPOK+zRMWUtlvXKgzC
In-Reply-To: <ce81312b-99e1-4305-a816-e74b2bd1ffd5@app.fastmail.com>

--------------JZZN9RNukWhT6mTh9qA0gOKr
Content-Type: multipart/mixed; boundary="------------1Bacf1sGc1TGe8l4IrvpURK8"

--------------1Bacf1sGc1TGe8l4IrvpURK8
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGksDQoNCnRoYW5rcyBmb3IgaW5mb3JtIG1lIGFib3V0IHRoZSBDVkUuIEF0cmlsIGlzIHVwZGF0
ZWQgdG8gMS4xOC41IGluIGZlZG9yYSANCndoaWNoIHNob3VsZCBzb2x2ZSB0aGUgaXNzdWUuDQoN
CldvbGZnYW5nDQoNCkFtIDIxLjA1LjI2IHVtIDE1OjM0IHNjaHJpZWIgTWljaGFlbCBDYXRhbnph
cm86DQo+IEhlbGxvLA0KPg0KPiBUaGUgZnVsbCByZXBvcnRzIGZvciB0aGlzIHZ1bG5lcmFiaWxp
dHkgYXJlIGF2YWlsYWJsZSBub3c6DQo+DQo+IEF0cmlsOiANCj4gaHR0cHM6Ly9naXRodWIuY29t
L21hdGUtZGVza3RvcC9hdHJpbC9zZWN1cml0eS9hZHZpc29yaWVzL0dIU0Etdmd2Mi1tODI2LThm
NmYNCj4gRXZpbmNlOiBodHRwczovL2dpdGxhYi5nbm9tZS5vcmcvR05PTUUvZXZpbmNlLy0vd29y
a19pdGVtcy8yMTUzDQo+DQo+IFRoZXkgY29udGFpbiBhIHNjcmlwdCBmb3IgYnVpbGRpbmcgbWFs
aWNpb3VzIHBvbHlnbG90IFBERnMgdGhhdCBhcmUgDQo+IHNpbXVsdGFuZW91c2x5IGJvdGggdmFs
aWQgUERGIGZpbGVzIGFuZCBhbHNvIHZhbGlkIEVMRiBiaW5hcmllcy4gV2hlbiANCj4gdGhlIHVz
ZXIgb3BlbnMgdGhlIFBERiBpbiB0aGUgUERGIHZpZXdlciBhbmQgY2xpY2tzIG9uIGEgbWFsaWNp
b3VzIA0KPiBsaW5rIGVtYmVkZGVkIGluIHRoZSBQREYsIHRoZSBQREYgYWJ1c2VzIHRoZSBjb21t
YW5kIGluamVjdGlvbiANCj4gdnVsbmVyYWJpbGl0eSB0byBsb2FkIGl0c2VsZiBhcyBhIEdUSyBt
b2R1bGUgdXNpbmcgdGhlIGAtLWd0ay1tb2R1bGVgIA0KPiBjb21tYW5kIGxpbmUgZmxhZy4gSXQg
Y2FuIHRoZW4gZXhlY3V0ZSBhcmJpdHJhcnkgY29kZSB2aWEgaXRzIGxpYnJhcnkgDQo+IGNvbnN0
cnVjdG9yLiBUaGF0IGZsYWcgd2FzIHJlbW92ZWQgaW4gR1RLIDQsIHdoaWNoIGlzIHdoeSB0aGUg
DQo+IHZ1bG5lcmFiaWxpdHkgaXMgbXVjaCBsZXNzIHNlcmlvdXMgZm9yIFBhcGVycyB0aGFuIGl0
IGlzIGZvciBFdmluY2UsIA0KPiBBdHJpbCwgYW5kIFhyZWFkZXIuDQo+DQo+IFRoZSBwcm92aWRl
ZCBzY3JpcHQgcmVxdWlyZXMgdGhhdCB0aGUgYXR0YWNrZXIgcHJlZGljdCB0aGUgYWJzb2x1dGUg
DQo+IHBhdGggdGhhdCB0aGUgbWFsaWNpb3VzIFBERiBmaWxlIHdpbGwgYmUgc2F2ZWQgdG8sIGdl
bmVyYWxseSANCj4gL2hvbWUvdXNlcm5hbWUvRG93bmxvYWRzL2F0dGFja2VyX2Nob3Nlbl9uYW1l
LnBkZi4gSG93ZXZlciwgaW4gYSANCj4gZm9sbG93LXVwIGNvbW1lbnQgb24gdGhlIEF0cmlsIGFk
dmlzb3J5LCB0aGUgcmVwb3J0ZXIgc2F5cyB0aGF0IGl0J3MgDQo+IHBvc3NpYmxlIHRvIG1vZGlm
eSB0aGUgc2NyaXB0IHRvIGF2b2lkIHRoZSByZXF1aXJlbWVudCB0byBwcmVkaWN0IHRoZSANCj4g
ZmlsZSBwYXRoLg0KPg0KPiBNeSB0YWtlYXdheSBmcm9tIHRoaXMgaW5jaWRlbnQ6IEFJIHRvb2xz
IGFyZSBnb2luZyB0byBmaW5kIGEgbG90IG9mIA0KPiB2dWxuZXJhYmlsaXRpZXMgaW4gdGhlIHNo
b3J0IHRlcm0uIEEgaHVtYW4gaW5zcGVjdGluZyB0aGlzIGNvZGUgc2hvdWxkIA0KPiBoYXZlIGJl
ZW4gYWJsZSB0byBmaW5kIHRoZSBjb21tYW5kIGluamVjdGlvbiB2dWxuZXJhYmlsaXR5LCBidXQg
dGhhdCANCj4gcmVxdWlyZXMgdGltZSBhbmQgZWZmb3J0LCBzbyBub2JvZHkgZGlkLiBSdW5uaW5n
IGFuIEFJIGFuZCB0ZWxsaW5nIGl0IA0KPiB0byBpbnNwZWN0IHRoZSBjb2RlIGlzIG11Y2ggZWFz
aWVyLsKgV2UncmUgcHJvYmFibHkgaW4gZm9yIGEgcm91Z2ggdGltZSANCj4gaW4gdGhlIHNob3J0
IHRlcm0uIEJ1dCBpbiB0aGUgbG9uZyB0ZXJtLCB3ZSBhcmUgZ29pbmcgdG8gYmUgbXVjaCBtb3Jl
IA0KPiBzZWN1cmUgdGhhbiB3ZSB3ZXJlIGJlZm9yZSwgc28gdGhpcyBpcyBnb29kLg0KPg0KPiBB
bHNvLCB0aGUgQUkgaXMgYWJsZSB0byB0YWtlIGFuIGludmVzdGlnYXRpb24gbXVjaCBmYXJ0aGVy
IHRoYW4gYSANCj4gaHVtYW4gd291bGQgYmUgd2lsbGluZyB0bywgY3JhZnRpbmcgYSBjcmVhdGl2
ZSB3b3JraW5nIGV4cGxvaXQgd2hlbiBhIA0KPiBodW1hbiB3b3VsZCBoYXZlIGFsbW9zdCBjZXJ0
YWlubHkganVzdCBzdG9wcGVkIGFmdGVyIGZpbmRpbmcgdGhlIA0KPiB2dWxuZXJhYmlsaXR5LiBU
aGlzIGlzIHVudXN1YWwgYW5kIGRhbmdlcm91cywgYnV0IHRoZSBzaWx2ZXIgbGluaW5nIGlzIA0K
PiBpdCBoZWxwcyB1cyBhcHByZWNpYXRlIHRoZSBzZXZlcml0eSBvZiB0aGUgaXNzdWUuIEl0J3Mg
b2Z0ZW4gaGFyZCB0byANCj4gYXNzZXNzIGhvdyBiYWQgYSB2dWxuZXJhYmlsaXR5IGlzLiBJZiBu
b3QgZm9yIHRoZSB3ZWFwb25pemVkIGV4cGxvaXQsIA0KPiBJIHdvdWxkIGhhdmUgdGhvdWdodCB0
aGlzIGJ1ZyB3YXMgbm90IHZlcnkgc2NhcnkgYW5kIHRyZWF0ZWQgaXQgYXMgbm90IA0KPiBhIGJp
ZyBkZWFsLiBCdXQgdGhlIEFJIHdhcyBjbGV2ZXIgYW5kIGZvdW5kIGEgd2F5IHRvIG1ha2UgaXQg
ZXh0cmVtZWx5IA0KPiBzY2FyeSEgSSBkb24ndCBrbm93IGhvdyBtdWNoIHByb21wdGluZyB0aGUg
aHVtYW4gcmVwb3J0ZXIgaGFkIHRvIGRvIHRvIA0KPiBnZXQgdGhpcyByZXN1bHQuDQo+DQo+IE1p
Y2hhZWwNCj4NCg==

--------------1Bacf1sGc1TGe8l4IrvpURK8
Content-Type: application/pgp-keys; name="OpenPGP_0x0C0B57D962C87B8D.asc"
Content-Disposition: attachment; filename="OpenPGP_0x0C0B57D962C87B8D.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----=0A=
=0A=
xsDNBGa74lUBDAC1GB3w+EPN63wMomngDXIVf/n0Eb/iYQpyyNUh3iGbOOb6tkeX=0A=
t7KE9UCSzfZHckp64YJpJ0SyiIW7/aq2svvEp+hV++qaIsZpMjYKh0zYQp5bXF6p=0A=
x8PPxZ80bod1HS1vPVQxXPS2il12q3CwQu9A5juR1/76oVfiDR5WVhAgQsx73skZ=0A=
LqWH6p5IdJL3nNLd5KhZUVhFiOlfIuvvhUXikVl+76KUW0Gg6DklDxTtSvdENagU=0A=
WaMwe+bj4WilEAnvAKkW8C8xywTP0gP0EzXyQ2SIhXJ2incLnr7Tkppk+oimx6Ss=0A=
P4mkq0tFQBD2ixdJTQ//pw52Zc2ywa5L+ac3YnDQVc86r7GkUM2PXKeh4j7yBwbh=0A=
QA0HVKSvdd38sT9MPajwUuwzQ0cq7mmjwupr6l2FEp5cGcmiGEe2G1YJn8xB/ge1=0A=
kEoE5W1KW4T7bUf1L6epbarbF9n8VnMlnDuXWVcDoOaPJZlkQANBtokPAUOtRBJf=0A=
MuWIF5qGLgvNxksAEQEAAc0hV29sZmdhbmcgPHJhdmVpdDY1LnN1bkBnbWFpbC5j=0A=
b20+wsENBBMBCAA3FiEE/x01KLC+nlDGjwkJDAtX2WLIe40FAma74lYFCQWjmoAC=0A=
GwMECwkIBwUVCAkKCwUWAgMBAAAKCRAMC1fZYsh7jVvbC/sEdZW5413iJKTNG4/t=0A=
3bVOwkzn4px7Ombsjtopl0Q0KdLcja8CajQM60Vyp/4cYMILuf9kSxZZDyeiYrFa=0A=
+KGbnNwD9iAt9a9H00dvCdXcMYZgjyuN62BWZ+XXOZWdvwIoNKxJevBb0pz3eiQd=0A=
z3jyczC+9k3FpKMDDYbQ1EyDWU3U4o9pDVWxPpTpfZAzRJz0ZwFH34RAWj0RRwYe=0A=
z1EkQAXGMrJhF9GUdgpm8kncwCSOraUQ3m1Bzdno9/LlOwN+kMCazjXjeu5RNLzx=0A=
d9dFWhTOm9SL1U0FiNx1C3BmwQC5SMLqAj9nDGYI8KkrqLng5n9HNAFYs4B1TYh2=0A=
dXtc8cwa6TXl82V8THR02tHgX2amLDlK/xZiDoQNtSj+FYfs61KPuJQoT/9/gasW=0A=
n/goVZYXodBI8AZVyDV3K9326CTHExssT/TlCTAifMulOG2nlL+27TqlI7pmt8K+=0A=
Z/Unu/aCcn/GYYefjwWNCvFk8HARl+XNDS5ow0VkSr59jEXOwM0EZrviVgEMALlm=0A=
bf5Qckn2cMDsrg9bM+wZQRxq+NSeJavaJefybt4PGjwQnP/uSI5/ILJPYblNb959=0A=
Tb8kMEpl2h77plvjVH9ZpFGcObGVb5vsAujIw8v+SvP0TtTYFh4pV0PdVU8xRN7t=0A=
RtQ7w7OB7rai0abTT6MshFExrNj+nVWSPVUfr8NreQxVqb3YB9/B8i7+fRK2IAuG=0A=
X7PsaOnYQRes4ld2c9e2xXvOx1xbMp8WkSdVSC54aEFYeyw7/xPes0v1P/ad2lX2=0A=
/F+oHls6pzMU7KbmirzLpCjDeWEf+CaP1B2rev42MsruHhucsYDWJMH+6bl29FSi=0A=
sJWPLftagxOtJBsImHt11bLRBHSI4kXAoDwqTFmjn6RCqI+bwOyQAtDwqRIdOiqB=0A=
D2TbbH6bR0Qn07B3u4Y+JR2Oxck6Fvs5LpUv1QmzWkOkCPpBnL0qw+ZG4V/lYFv4=0A=
+TYRgW42imDL8hU6XII2mwtxYuejBfpbKgBxYiHxKa3WSkZN4wElwmG5TmrpiQAR=0A=
AQABwsD8BBgBCAAmFiEE/x01KLC+nlDGjwkJDAtX2WLIe40FAma74lcFCQWjmoAC=0A=
GwwACgkQDAtX2WLIe43UMgwAjRH5keS6oq5WVyTtPubjGmsicFH5bAlWV/sjq3fI=0A=
VSQCQeN8uDioWUIUIBgSi3d2orUpDsUVKgdWVjgn9e0n9VXNuTcyTE5jAgDT1Lh2=0A=
Hj8pSAu638Ew+idX8V198bh1soy6Ra2mNWiNnlTwPGVbFnaxqP8PL84NRBIJf+Pi=0A=
/FH0xP68xFFfvVjZPoe9B8QmkEWxLDJI0vjD0/P3kLCE9y4wcxbUstQD2g/Thf/w=0A=
LUT6452rfcxzFa06BPJ3FpTyv1HleNK+JdP9HsT4BER8SNTgEjAdlk860vWFtpXL=0A=
ShyiLHw0eYgIv0VOjqJKhhcqmYKHCcWTrSdmXbOuV/NnBib1CxamLnFwrSVmbu7o=0A=
WIdG8FOOR8JlRBjsLusueBPDBTbtJ+OyseIQ4exGxpH5JMriBfcW7K6V+c7hVI2i=0A=
0u8n59nDKEh3P52fD34/GQNPLxr9YrxbUhPcdn9rWogcEH5wsrEBsriRwMjEux3E=0A=
9nIrAgjPOK+zRMWUtlvXKgzC=0A=
=3DSe9K=0A=
-----END PGP PUBLIC KEY BLOCK-----=0A=

--------------1Bacf1sGc1TGe8l4IrvpURK8--

--------------JZZN9RNukWhT6mTh9qA0gOKr--

--------------7w1HyDWBmUd7aRSLeIwguMeF
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wsD5BAABCAAjFiEE/x01KLC+nlDGjwkJDAtX2WLIe40FAmoQiOUFAwAAAAAACgkQDAtX2WLIe42v
mgv+Nni3k8155oO8yhTnqlQuHeAf9NG1gfYjYbCgiHg6ReZWjuD85ps6zI/Mt46HBKGv4tfQ5/6o
8G+t2ce82oHfcOmO5c++JtVxCwOaHPPiROT/LrWnvQ5J4AYJQcJJdtyce5oACCYfRdkT5Rv/jMRu
77C7PXlahGKUdsUe/WV+NKIBLmiE3P2dVFUGF15qvsP27iE8EphX7f4x2L5EyjSTqUaKwHfU4rE5
oKm/US8pgkkL1NAhwDxlB4/R7yur+dFD6rKdrSyu/MNttNvZfnXt6s4Qa52Bchrdf+OJ4+C8xMg+
442XzZcpU4O5tvkbP1N5jQvX+4q38TAp3H7/YqD5TafzNfuUZjLdd2fRo7g15e+yur8Qm205g6EK
Ga1T+Hpd28b4TNEbD4JGYUHvCh6Q2aYaREh7hWzBsdbnl+moK74lp1fbOIZRIJ9U4FvKv/XMTO+z
05vkgi1hr+F0aC0kXYRU0MPmjJWnGURcNlpwVjk1VnM0E2FNr6Op8MpD0msy
=3ewQ
-----END PGP SIGNATURE-----

--------------7w1HyDWBmUd7aRSLeIwguMeF--
