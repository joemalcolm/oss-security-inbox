Received: (qmail 30308 invoked by uid 550); 19 Oct 2023 22:53:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18422 invoked from network); 19 Oct 2023 22:39:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697755149; x=1698359949; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MD9dCOPooBH0lSYyMpK1DhIcq86inJLDQgPBdgr06BU=;
        b=MeBjH1MLDrh76ZAST61hHHK1B8qdC7+NUHu8yjLegomWbWnRdSsNMP/LbXZU3788cB
         sJJNLBycH6Us8zDaqnAEP+JbQ0HNuzFm/oIQ5TxtCdfIr1wXMcj71H+kPOC5qFFmo6zo
         egMCJXbioQfpmZnVdQarzaOHpA35mfORp2grKt3nkMbhVJt+uUSmEfnkUOIl5hp5Ujii
         aUGQZG2skrPYZ6KcxddwTYxUGndlPM5q/Xmz0jSUZC3wGsL2LNCJdNJKUtsmZEgDHiHG
         rcbYqksCHkhrcKIrF+ZxTUAfW0hNAky6jz0exmAML3Z5oy31FpUDhuT9WQ5Is/K8hUL3
         NQ+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697755149; x=1698359949;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MD9dCOPooBH0lSYyMpK1DhIcq86inJLDQgPBdgr06BU=;
        b=bc3U0viyynKBJqS7pSmf0s+QiN0J3sgccQnO49p+ej3VzElvNzesRG85+WPRwKuSmf
         sGO2n9E+L9pDS/RwfsfOu0I4nGuMy4ZI97ZkDJjlaGXj3RVzkzt1XONGmkzNxiRbO2+4
         T89psM+noPK4XsjLke/qiM5sNyVMh7tp57rxNza4g7hqOGij7J+oPLCKOzMkrxOWCwZr
         ZbF7O1h5qgskBmVriCquulC+UYhnRD2V2xZvr0CTGKKWVa3U0X+li8LRMThv0IWZhMMZ
         jCsKE7thBd+tSSlWNPDtv4i4EoLrFHwZystdsfruLmtoCOdRe/cVjUAYG9uT2j+gpL3c
         oZng==
X-Gm-Message-State: AOJu0YzpfwubVXW6lTjjpxuVfMQ5fJjjdGfTJ/6mWI2bqtPIqtK1KmUO
	MS+JAo+pAkrYLn8ovq2rMnH0z46aPsVbC7HVb/B0SEuV1dE=
X-Google-Smtp-Source: AGHT+IHoXebyJ3mWDFSOAQEpZQVwcQDfy9C/FPzXnQeac8KYBIHa9z4EUW/RN9I+mffnRiWoLOt2RGU5I/j4HBJVY4o=
X-Received: by 2002:a05:6808:f0d:b0:3b2:dc66:1673 with SMTP id
 m13-20020a0568080f0d00b003b2dc661673mr218845oiw.9.1697755149422; Thu, 19 Oct
 2023 15:39:09 -0700 (PDT)
MIME-Version: 1.0
References: <e5dc2cc159fa7e7f287e10482366011e.f0e92af0@rotted.prefixed>
 <bb8d7948-912c-0c96-6a7e-2f05a4cabfd0@tnetconsulting.net> <d85658c838a1338c829cee30fb9c344688a2a470.camel@sambull.org>
 <20231019203554.GA11867@test>
In-Reply-To: <20231019203554.GA11867@test>
From: Jeffrey Walton <noloader@gmail.com>
Date: Thu, 19 Oct 2023 18:38:58 -0400
Message-ID: <CAH8yC8mJO_-K3Sr4_cJPyV0QAFx_o3dEneS0aq4QRPSf5yNPLA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] with firefox on X11, any page can pastejack you anytime

On Thu, Oct 19, 2023 at 6:22=E2=80=AFPM niekt0 <niekt0@kyberia.cz> wrote:
>
> the problem with modification of "clipboard" is unfortunately much broade=
r, than just command execution in the shell. Imagine situation like pasting=
 a bank account number for money transfer into internetbankig web page, and=
 some browser tab in background silently replaces the number. Or replaces t=
he bitcoin address, to make situation more dramatic. The direct command exe=
cution is probably the most straight-forward approach, but with bit of a cr=
eativity you can come with many various attack scenarios.
>
> While I agree that application isolation in X11 is a security problem, th=
is bug/feature is bit of a new pokemon, it also breaks tab isolation within=
 a browser itself, when used under X11.

I think it's worse than described now. We've got those apps that
monitor the clipboard and ship the data back to a server. That
includes sensitive information like bank accounts and passwords.
Confer, <https://www.reddit.com/r/iphone/comments/hlfmba/apps_caught_snoopi=
ng_clipboard_contents_even/>.

And I believe Reddit does it for targeted advertising.

Jeff
