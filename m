X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["533" "Tuesday" "10" "September" "2019" "11:34:34" "+0400" "Ilya Matveychikov" "matvejchikov@gmail.com" "<F8EB26DC-CA65-4511-9D60-5A8ED0F4980F@gmail.com>" "20" "Re: [oss-security] Telegram privacy fails again." "^Date:" nil nil "9" "2019091007:34:34" "[oss-security] Telegram privacy fails again." (number mark "        matvejchikov Sep 10   20/533   " thread-indent "\"Re: [oss-security] Telegram privacy fails again.\"\n") "<CAG8b5tQVkcbRqFNk0GhJRCs-kdRPYnkL0E9=mbGMikCOdi7g+w@mail.gmail.com>" ("<CAG8b5tQVkcbRqFNk0GhJRCs-kdRPYnkL0E9=mbGMikCOdi7g+w@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Telegram privacy fails again." nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18255 invoked by uid 550); 10 Sep 2019 11:31:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32711 invoked from network); 10 Sep 2019 07:34:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:content-transfer-encoding:mime-version:subject:date:references
         :to:in-reply-to:message-id;
        bh=RZpdo1z1ep7v9BmsV7OcKbIvwvNovK6farbwzE3cDC8=;
        b=uyyQ2WJTbZrOYkn7ZyYEL7D865Qm9Z3a+00nlwzt4nKxxm4HsSU1wvDCFBk2bOdz3f
         Enx0QL91wl4OAa402nbrD90w/wJ1x824JXmMlLaZXCiGkSRUbI7thWMHnjoj0ct9xLWq
         FdB9Heo/Xj1zjuVRLxNl/DXv4S0XCHnDb15O768uWZsa09FRxaP9sWKkJFFTIl1QHfJL
         m0D1HdmIbRCT3iwMkTiByEPr5fxzRHMR5LxKZsORSksBTj/ECNpcKWW9YybZFNLi0MTl
         cqJD5sabU/22+iGs4h48X98KU6Jqn38hUIjOSdxo3PDXg1bmhs6yHHs3evSdGZsGqw/y
         NOFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:date:references:to:in-reply-to:message-id;
        bh=RZpdo1z1ep7v9BmsV7OcKbIvwvNovK6farbwzE3cDC8=;
        b=Xk8fppnljhjsCLahNhPeLpnfKhCNM4mqaOBF9kxqshTQ+L21PKkLSKGndK3m/3fYIf
         r8YPWYCce1MjBO76gNB3OvsM7NipVctAoA8eD6EjPy9xuDqhUo8M/YWffI9uyL/GfDpl
         z8LZMws/BjfQFYRWECaToyk3AZu3ccb6i7oq1clQ5L3szzBmIYaTVAkO9rsFAsuynfWi
         yFEQJcX8meGFkFenzML+Osm7h2tpcuXdd5nEswvEdupaXZy8P6NvFQJ5cfPzqcVFodIo
         e9OF7ApDQzU0BWg+j7kvo4vYmZvp81xJzGIfD4QuF5iPtL4J3mI8B07LPhWGObNNpCBg
         rVrQ==
X-Gm-Message-State: APjAAAXo1F3W3G8rq9sL5xBfkuR9gQsLUI/aV1vm60KqX8AWns4G3Ojw
	g/Y0QgzRSHfesR4OYUbzMBFue1h2vOk=
X-Google-Smtp-Source: APXvYqwOmIs7WLTmFtZxMGWNC6qKU7RJWSnnBJ9JU+jr86enCR94pAO2EdxRu9i10yWEUJq7z3uUQQ==
X-Received: by 2002:a5d:6192:: with SMTP id j18mr3085534wru.336.1568100877455;
        Tue, 10 Sep 2019 00:34:37 -0700 (PDT)
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
References: <CAG8b5tQVkcbRqFNk0GhJRCs-kdRPYnkL0E9=mbGMikCOdi7g+w@mail.gmail.com>
In-Reply-To: <CAG8b5tQVkcbRqFNk0GhJRCs-kdRPYnkL0E9=mbGMikCOdi7g+w@mail.gmail.com>
Message-Id: <F8EB26DC-CA65-4511-9D60-5A8ED0F4980F@gmail.com>
X-Mailer: Apple Mail (2.3445.104.11)
Date: Tue, 10 Sep 2019 11:34:34 +0400
From: Ilya Matveychikov <matvejchikov@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Telegram privacy fails again.
To: oss-security@lists.openwall.com



> On Sep 9, 2019, at 11:16 PM, Dhiraj Mishra <mishra.dhiraj95@gmail.com> wr=
ote:

[ ... ]

>=20
> Assume a scenario where Bob sends a message which is a confidential image
> and was mistakenly sent to Alice, Bob proceeds to utilize a feature of
> Telegram known as "*Also delete for Alice*" which would essentially delete
> the message for Alice.


> ... Bob (!!!) sends (!!!) a message which is a confidential (!!!) image a=
nd
> was mistakenly (!!!) sent (!!!) to Alice ...

"Telegram privacy fails again=E2=80=9D, sure, sure.

