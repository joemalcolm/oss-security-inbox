X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2691" "Tuesday" "27" "June" "2017" "13:59:48" "-0700" "Euan Kemp" "euan.kemp@coreos.com" "<e2ec939c-1fa5-8619-7771-d68ee2bff13c@coreos.com>" "77" "[oss-security] CoreOS membership to linux-distros" "^Date:" nil nil "6" "2017062720:59:48" "[oss-security] CoreOS membership to linux-distros" (number mark "        euan.kemp@co Jun 27   77/2691  " thread-indent "\"[oss-security] CoreOS membership to linux-distros\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21921 invoked by uid 550); 27 Jun 2017 21:18:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8150 invoked from network); 27 Jun 2017 21:00:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=coreos.com; s=google;
        h=from:to:subject:message-id:date:user-agent:mime-version;
        bh=bBOQYRwPx0P8wa1mYhSsXNWiNwWZxHpwHO3UoIq2SmM=;
        b=S+JoSu0aQ4UgKfOYkY6/+WvsP8Fio2dmG/x76+Amy0ID6emEDTIEUpoYPDegw8Jcb2
         EidZsaJ2ztO1eX64yQcQo7GG9JX+Jjh7Ztwe+fOgIKL4dQso6zLyeSk9kjE7D6SeM8su
         EsUS4bwdlk2bekNMpERGGaJ1/xSmvyffQI5/Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:message-id:date:user-agent
         :mime-version;
        bh=bBOQYRwPx0P8wa1mYhSsXNWiNwWZxHpwHO3UoIq2SmM=;
        b=aYAXOwU1u4NGvAkYz5oBZEJ1zTm0O9hTg7nXjXOzCFdo0nHGFqXU7gdKssh4ZK/nkY
         VBN2H3zJYB6JphPjngYWvu4DAYaNdcOhkDJ25E2BIPbQs1ex7yy5J9oCPv2x/mau4rVU
         DQuTt2CPKq2oJV7IYd5lBWudwANODIEaJTYLB1rQYMtK9xYGNXWV+tclzdRIh6hHJ5Ff
         /omS8ZbozQ1CLU8g0ReFlZwOcwWA1bB2e5wRqqkCfTdjU2z4sY8qn7Jv9tYgzfdqEJTq
         dl5i5hvZ4Pa94PqBbdaNp09nTcMj/jRXUb5SfaydW7tpiM0GrlRy9/ibDSZzFBoItf4x
         qK2w==
X-Gm-Message-State: AKS2vOzZNqOHmoNm+IPa4LTDSMOTS5rGnYaZQgXv65VuOuxHxSrMgNmQ
	tSh133GWl9wSgNTb1cqKiw==
X-Received: by 10.84.217.88 with SMTP id e24mr7769492plj.94.1498597190752;
        Tue, 27 Jun 2017 13:59:50 -0700 (PDT)
Message-ID: <e2ec939c-1fa5-8619-7771-d68ee2bff13c@coreos.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.1.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="0tsSp0LkiWbuuKlqo0UG487tGQ4FDmj6S"
Date: Tue, 27 Jun 2017 13:59:48 -0700
From: Euan Kemp <euan.kemp@coreos.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CoreOS membership to linux-distros
To: oss-security@lists.openwall.com

--0tsSp0LkiWbuuKlqo0UG487tGQ4FDmj6S
Content-Type: multipart/mixed; boundary="BtdwVsgPSlFtgu812pwCdtcwvFBP2l62M";
 protected-headers="v1"
From: Euan Kemp <euan.kemp@coreos.com>
To: oss-security@lists.openwall.com
Message-ID: <e2ec939c-1fa5-8619-7771-d68ee2bff13c@coreos.com>
Subject: CoreOS membership to linux-distros

--BtdwVsgPSlFtgu812pwCdtcwvFBP2l62M
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hello.

We, the Container Linux team at CoreOS[0], would like to request
membership to the linux-distros list.

We've requested membership once before[1], but at the time new members
weren't being added iirc.

Based on Solar's comments in the Stack Clash thread, this seems like a
good time to renew this discussion.


To preempt some possible questions:

Q: What=E2=80=99s Container Linux?
Container Linux (formerly called CoreOS) is a linux distribution for
servers which automatically updates by default; it=E2=80=99s generally avai=
lable
and has a fairly large install base.

Q: Can you handle embargoed builds?
We have the infrastructure and experience to make embargoed
builds/releases. These have been exercised by e.g. docker CVEs in the past.

Q: Do you have an advisory page?
We don't have a more comprehensive advisory page than our release notes
(which list CVEs fixed in each version) and in some cases blog posts.
We intend to have an advisory page at some indeterminate point in the
future.


- Euan

[0]: https://coreos.com/why/
[1]: http://seclists.org/oss-sec/2016/q4/205



--BtdwVsgPSlFtgu812pwCdtcwvFBP2l62M--

--0tsSp0LkiWbuuKlqo0UG487tGQ4FDmj6S
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIyBAEBCAAcBQJZUsdEFRxldWFuLmtlbXBAY29yZW9zLmNvbQAKCRAwQW9VXxgM
zFirEACAuejaLTJ6ItiSm8Td3Cp+LiQW7iy4OeZvs0kNkLiJZ7sJJYXL4CIUl5Zy
BJk1a930EqOXi9Z1CV/4EbgZtiH+pdR/TCKG6t9v97lBrNQVipNLPrAzik/tROeQ
74sMHV1nRFu0fmVXFdIeQWhzswayYax5f/3rXWR0DUqGMLBBd525yK+4HCpsevd3
NjOOvY92L3k6pAMQWInJdtS9wRyQkdKP51Ba2I8Lp0wnPuFyYvCK78jD8aQnZnot
65ZXEkGwzjQR7Hcf3NBnqkim70F4+YWHGNMUBrPbiIvFCon63Xt2GcX9INBC79yX
vvZfyYyUP0pqCbmjwLTj9wEhjq2llitDWzPcHryduHp1pL9Ku98a6EB6nLrV4bJA
tbP74dHiSN+gwXX8rSUHqcia7yKZ0fHFXcCXEM7LiK2f1hLGkqvjgcwP0n4Ry1Ma
nQpEOgXSnWX8XjO1XDxP76MfO8TE0jZY4QuancMuclWLpbQ9YOJGBlLJf1UegD7W
q6BU7CRNonA/Vs/iRLeqs/nTQxETliKu922tTBI+uTd6zNIHR0eD9kD9R07tri3j
hyfohBg7LTVXa1YRaFlowjNXgUZ/cFMUHMHMlZZ3KFEVwLyxmHw57zlHAoFqv1FX
8tz4IBldk4JP/DJ9zxMi9jBfsOy7e8UzN7azthaKPmAul3EPJA==
=v76H
-----END PGP SIGNATURE-----

--0tsSp0LkiWbuuKlqo0UG487tGQ4FDmj6S--
