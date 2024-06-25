Received: (qmail 27745 invoked by uid 550); 25 Jun 2024 18:38:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7262 invoked from network); 25 Jun 2024 17:54:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rafaelgss.dev; s=google; t=1719338062; x=1719942862; darn=lists.openwall.com;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z2ewyXNMwpHa9vCnISu5zJoH7Jm8dxjuDOKfkmisNkk=;
        b=lU4g/Ajo50ZEbZsg/xBXlQhoh6JbzBo5FiVnTXcwOTmqsBJqDHmc79qTb7ODKhgC1m
         xGnKNM58N63JEJic+KNxVp0E+uT866ar5LSsqWAH0K8KYiJEd0lRC8OeqUXmGWk1ybFj
         nXFopUEluqVKkM1OEic4WTRhvDYs/ScCss5i6QyKvaO6VC2ikHMfzIYDbEcJg+ghPj4Y
         GpP62D7YAgdrvpvDyanbiu24Or8oCHFuoBOz3P14F85wKzu2SZXSw8KFHyEqKc3zmk5g
         6x4nTyCfcOgSquuT4ELqjDy6VdclHD51LI+1iEL6l+FCUXJfG5+6Ki5HSsNDbrYbRz8W
         66hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719338062; x=1719942862;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=z2ewyXNMwpHa9vCnISu5zJoH7Jm8dxjuDOKfkmisNkk=;
        b=mu9MsY6uFHDtIgUQJKjVg8hMsMtHZbh4prNC0QShhF5aTMoz5UX3D9ntK16wiWPt40
         nGvG/xorzL+pw33wgJuCzxoqqbzZ4JANjLKBa7U6OWmQS0ROUptXMWH2+MJ1E5ozrTIk
         Oqs6h90uxSBFEAto9Avozq6WAJmsqGc6umQWWFSIwZ4f1WLjEgsPnmA72BEeFTveSxIr
         SJu0v8Zx147VmwKQV/hzrKkD+EbAzz4GKgoypPdNPGCYyANDwyH+WwEsMy2T5f24dOLo
         fsxBgs+tKUTty7ixWEpMvn4KODbkMT1iLU2NQqf+SgPRoTItihhCxK9xplpxuUxLPLrf
         j3WQ==
X-Gm-Message-State: AOJu0YzalhHvEZiW6jPZcV90TIFu/8oFE5qx7NTpcAR9oW/HQkXanL1H
	KizsHFxKXHnh9VI2ZtAuVF+BuDLHjf4ZF0t3Hrh/ObmRhSiOvlBMSW0YPYZLQr/cIUy2q/ALTQT
	JKPNrWpdPTEpynpeKLQ==
X-Google-Smtp-Source: AGHT+IHIMS0vFCcYs8gnmfIPJKu3AObn1WReGInSpXm97HXDHyROTAL24EtMSi7vY8+q/fe2Y95wDrvbHg==
X-Received: by 2002:a05:6820:1b8d:b0:5bb:16a:e08e with SMTP id 006d021491bc7-5c1eecc784emr755207eaf.1.1719338061954;
        Tue, 25 Jun 2024 10:54:21 -0700 (PDT)
Date: Tue, 25 Jun 2024 10:54:21 -0700 (PDT)
From: Rafael Gonzaga <work@rafaelgss.dev>
To:  <oss-security@lists.openwall.com>
Message-Id: <519892a2-6a90-45fb-a3c3-99a0159bb210n@googlegroups.com>
In-Reply-To: <46450232-0958-4f83-917e-0627346bf519n@googlegroups.com>
References: <46450232-0958-4f83-917e-0627346bf519n@googlegroups.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_344129_283865812.1719338061769"
Subject: [oss-security] Fwd: Node.js security updates for all active release lines, July
 2024

------=_Part_344129_283865812.1719338061769
Content-Type: multipart/alternative; 
	boundary="----=_Part_344130_607456733.1719338061769"

------=_Part_344130_607456733.1719338061769
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



---------- Mensagem encaminhada ---------
De: Rafael Gonzaga <work@rafaelgss.dev>
Data: ter=C3=A7a-feira, 25 de junho de 2024 =C3=A0s 14:53:37 UTC-3
Assunto: Node.js security updates for all active release lines, July 2024
Para: nodejs-sec <nodejs-sec@googlegroups.com>


The Node.js project will release new versions of all supported release=20
lines on or shortly after July 2nd, 2024
For more information see:=20
https://nodejs.org/en/blog/vulnerability/july-2024-security-releases

------=_Part_344130_607456733.1719338061769
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<br /><br /><div><div dir=3D"auto">---------- Mensagem encaminhada --------=
-<br />De: <span dir=3D"auto">Rafael Gonzaga &lt;work@rafaelgss.dev&gt;</sp=
an><br />Data: ter=C3=A7a-feira, 25 de junho de 2024 =C3=A0s 14:53:37 UTC-3=
<br />Assunto: Node.js security updates for all active release lines, July =
2024<br />Para: <span dir=3D"auto">nodejs-sec &lt;nodejs-sec@googlegroups.c=
om&gt;</span><br /></div><br /><br />The Node.js project will release new v=
ersions of all supported release lines on or shortly after July 2nd, 2024<b=
r />For more information see:=C2=A0<a href=3D"https://nodejs.org/en/blog/vu=
lnerability/july-2024-security-releases" target=3D"_blank" rel=3D"nofollow"=
>https://nodejs.org/en/blog/vulnerability/july-2024-security-releases</a><b=
r /></div>=

------=_Part_344130_607456733.1719338061769--

------=_Part_344129_283865812.1719338061769--
