Received: (qmail 11894 invoked by uid 550); 12 May 2026 20:24:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1845 invoked from network); 12 May 2026 18:38:20 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1778611091; cv=none;
        d=google.com; s=arc-20240605;
        b=gKGa3DU/WyuLn7ltJeOxpnNkBLLiVz9r4oUDHoaWq51JtgydzqiZQvRXTTPJ/Eim/8
         lRs6hegxKs1hK1u9YhcNwsMQzZX1YwhDSfORYMnmJ2xJp6VFE318iRBPECeOWyRUiL3e
         i9ppZLZQmvrPTBHpRVWCdeNB/0/A6g8xgxUer/co+a7E5q7JCe+pXm9nZRqew3zGxxHy
         UrKcthMTWlgynsvjtwTjKvz5HH3bRmwCk3pkprNqGViYlgJdDqm3hDRn5RUyXB90LAxS
         9XgRaAUzMy5Oj5GEPdLdydEVWGRMER/7HW5wXqApIIpy5vPCcj+pVmXcmvC8UmGP1Pxg
         P0vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zjb0GTBTaas5BLVRv1gPaD49U150ROxag4S9lKEpcqM=;
        fh=rxgFuEFYYhL06fHm1vQdhE2eGin8+oowWiWcxZ33+4s=;
        b=IbGy62srL4QEhTixvb1fI9sWHyFokP5e4dWuOyzj+qrgxAw7GakVz+jY8IO6nXh1rW
         6YUzmfVnMWqzgk5wh7wvUfJb4qHd6f97NZEr2opcv4NhqJ7Srk9idzKp33yxGAvMrmzG
         8c8h54k8BgW888DUhjB5im5udWBcRyKuih/K+Ib3aeGDCBkQ1PtNCcXStav1GMx88dJg
         WO94qb7+aum3HCrDjEeviaegG7y2mJZ2BP+5iMtYhj7ADPXFGLsJDTyTjRe9HYgaXURO
         BeKvm8coFoKT2PYaTZuKAcpGYgmA4gI/6PHMu63xbt1juLiDzjPHNHJCSCeh53FV9U1/
         Fv6A==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ilia.ws; s=google; t=1778611091; x=1779215891; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zjb0GTBTaas5BLVRv1gPaD49U150ROxag4S9lKEpcqM=;
        b=IlGM5Lw+82pAtHY2n8TvOYYVi0JVQbOBK9a81/CkoJhaqKP38kWuPJV/83/N2jk2/U
         Ilmydhvp6BdNgiKEbrsEjQsk66yjTtJHx1i+SzlIstWgmXuWTVg0py5+vg/5TI1zCKrh
         tcK8klp4s9q3xV/dE8PYavsg1+AyVWZdwruHRxPYGFVW4WJcvKlSgNqG3+wTYKNIXUn4
         H0uxO+9Py0asxijYsE5jZIL6jb6cIXKAmTugvT35srS0qu7h1P8IbFrrdxci5lddWE75
         nPkVSIDV5+R0SQNuckKU1W93ZOvZXF8TJXrbv35nreRhKJK1rvp9EPMLMajI0bjOcGgV
         eEOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778611091; x=1779215891;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zjb0GTBTaas5BLVRv1gPaD49U150ROxag4S9lKEpcqM=;
        b=kPpO/dqHWdhRvmglE48hUtxKka6fq7tAagRFzqwZ2KtRsW0HldpY0eBss99yKAGfuf
         7+AfZakKNAAUGERlY5hMVatQT05BLs6ygWpeJSKsTbmmYYCdQmu5m6FX+sWvRrU1A/qH
         V+IVeiy8MxzuixXjKEZcce1ssaTkpYqZFwZvONdqvImiZgXgV6mUCEC2IkNdao0q6eox
         6qm6uHO+yZXcvV6YPAoonZJhif/1e5AO2QIknzQfLZdB4HK1loPo+1fhtCzPgnbuRup5
         lEB6MnpNHGl0ZGkU/qKrQLdedjwHooF/O8IesMSwU4/03CxzaQZn7Dw/raoLLQP8llS2
         xZDA==
X-Gm-Message-State: AOJu0YxpGa7Cw7iWn8LNrH2+7Gz39GvByS6avamFfeOEBq03rOqD15m1
	nB+f+5uc33iPFxe39Y7M5VDpk0cB8Pjb6epDQlrTYR5qu5Le7iHE6cvLmBpiag5zNL9UUEWMsES
	cFLPLtCzfjQkwR9cwkT9Ujc7mAYfI3ZVQhuL44MlTpU2i2+ChiVQaYA==
X-Gm-Gg: Acq92OHV7Mdh5WMuOqiceMoh815OR07C3cierVuU4JEUhQyU1nlfRhVmoUEeiyx0AdL
	HDW3n1X4U5ywQ66/VN8SZTAz1Y8JH7S81gldLq6TX428GQCTDuKMTI7ED2rPs3EDYbq5iRO8Wp8
	EyYio7mOSrziQa6RHg7yNPQwHEytlQFPuDPTgiyk7mLDi/TOTuePJ64H/y9WMssFhH3/S2DtZ3+
	5cUFioAoRU6dLh1Rg61EmkybWAbqJlSO06KdckVCvfAi5eBp1cf0HGj/YPdXR9+fktamLzV8h4k
	7kOMzdDbD5jG43ArkFBs9N8F6tEd56q85VDymFD/CBOCCH9fCQE8FbhtpoIHL0XKZnzP
X-Received: by 2002:a05:600c:c170:b0:48e:526e:1040 with SMTP id
 5b1f17b1804b1-48fc9a46ecamr1016415e9.23.1778611090985; Tue, 12 May 2026
 11:38:10 -0700 (PDT)
MIME-Version: 1.0
References: <958c7edc-400f-44e9-aac4-78161e999db4@pipping.org>
 <20260510074756.GA17210@openwall.com> <c67530db-c586-4921-bc3f-67a12e389eb1@pipping.org>
 <CALkpNnQHhjgua8=6iH+L+5hB1AgcLeJTV9Js_9uQ4OJA5Sd+qQ@mail.gmail.com> <9079a54f-f83b-486f-b66b-79ed0ba69838@pipping.org>
In-Reply-To: <9079a54f-f83b-486f-b66b-79ed0ba69838@pipping.org>
From: Ilia <ilia@ilia.ws>
Date: Tue, 12 May 2026 14:37:59 -0400
X-Gm-Features: AVHnY4JLg8feWvyIbDfTZhj7ceWyc3MHduYBnG59IG8BEA8b8OfUnEXgFllU3RI
Message-ID: <CALkpNnSMzsMLVbo2NtLWjDg0EeN5F+Wr=Enc2sG+5ZtKUixUhw@mail.gmail.com>
To: Sebastian Pipping <sebastian@pipping.org>
Cc: oss-security@lists.openwall.com, solar@openwall.com
Content-Type: multipart/alternative; boundary="00000000000045ac1b0651a32ae0"
Subject: Re: [oss-security] uriparser 1.0.2 fixes CVE-2026-44927 and CVE-2026-44928

--00000000000045ac1b0651a32ae0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 12, 2026 at 2:13=E2=80=AFPM Sebastian Pipping <sebastian@pippin=
g.org>
wrote:

> >  From my perspective CVE-2026-44927 is a low-severity security issue
> > that would be hard to exploit in reality since it requires an actual
> > 2gb+ input to even trigger. For example, in the context of PHP (which
> > uses the lib) you'd hit the memory limit long before this even triggers.
> > Therefore, this is "Low" severity from my perspective. Given the input
> > size, it definitely doesn't have a remote vector.
>
> I have no problem with this being considering "low severity" based
> on the payload size needed, but this /does/ have a remote vector that is
> independent of size constraints, as far as I am concerned. I just
> checked the definition of a remote attack vector a la CVSS [3][4] and
> it's not "adjacent", not "local", and not "physical": I see nothing
> stopping applications from parsing URI strings read "from the wire",
> directly or indirectly, the same way that XMPP parses XML from the wire.
> Am I missing something here?
>

That's a fair point, I'd still lean toward "low", perhaps low-medium in
light of your comment.

Parsing streaming URI strings from a wire without any cap is a bit unusual,
but stranger things have happened. As you pointed out from cvvs guide, it
doesn't care about that.

--=20
Ilia Alshanetsky
Technologist, CTO, Entrepreneur
E: ilia@ilia.ws
T: @iliaa
B: http://ilia.ws

--00000000000045ac1b0651a32ae0--
