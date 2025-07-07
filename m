Received: (qmail 15977 invoked by uid 550); 7 Jul 2025 17:39:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15922 invoked from network); 7 Jul 2025 17:39:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751909943; x=1752514743; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=kN2wEdmEZWesYo97vMEr++vOqU9IuTu36TLi7Uj4/d0=;
        b=dIRGGKAmLHYYEdfCrHd56mrElcEn9if4o+BMxNKre5B54oxt2uPKTBJfax8AwV/8Lx
         So3ib+aLEPZpGYRIslyRhTQi3cJ2dM3CTJvOOfAwMuRPjGO3T1hWhC4GfwyXct4H0FwG
         xfBsUrWfc0QVPd1Jv/zOku/7HmA6gDU9GrzCceJ8K/SeMuohogCpgeU72TSTKVLfON7J
         ZJQIPcg0JvGCIZuWQd9Nq2XBk881ilRtCQ+1MTILj0qEx/tQ3j+IG7SIjwwzqBsMAHkx
         Us1GppktkgssSHnneZsSrqY6plXgQJ9wMD9cP6Nu7vGpvUvn6TDDHRDh5+C8alhjDwNH
         vb+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751909943; x=1752514743;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kN2wEdmEZWesYo97vMEr++vOqU9IuTu36TLi7Uj4/d0=;
        b=E72+yxc/gUs2IVfywX5pY3j7ix9H8j+OXt3WfACwPc2h27GZok+JAxA86dG/xBKaKb
         AcFZSnFKd/GL60S3NY+nxzYDQE4wzJIsQWyiapLAEaEFKKhm69lk6eCw8n9+ntEYNxir
         67cvPXb9liXIJQ2bW+W+L6j/28dynaZr0SmLYI9vclOqF729w2TDERl9MzVaT14HzDaB
         s1yb2Wrb2+krg+MKtFJaLwAgo4fawto/t3Q/L8/3cboCK0ShsZiPW/+SX5yDDNplDgGL
         iX0cQDuGHW7uuQwUlwWfm5BZBO5u/D5RDLkyih1lxzwvybh2BTOOmw0NmC6gUa/heHlC
         Ws9g==
X-Gm-Message-State: AOJu0YwpfWwhxqZ96Hj6LLgXNWF3Vi/iLiXZvNQr2kv6dQpWjWMVtdcN
	hb/COSGDboQl4GuS7bS//R0f4Tk7Ff/nbRGlUSdjsENrGSnVH4eAWY/ODYkD/8nGXtB0JHYNX3B
	sa5uyfErsGppReRVBF1wLGIetZbZiK1tyz2bPT1g=
X-Gm-Gg: ASbGncsRAyFquT9j0FA2GQvWEHAc0RvJm2KRVGRxO5Ad1N1NekycK0IfkYQCPhjf2ic
	66oncWkz9+YceSoZVCYZDbsQxryxZlR1FRovMSsBpmvLnH81ZbQPPPDlzzOzOYxif6eenaNeWMM
	+Yc/P/pAUQIp7NDoQQAbGtZpSlJTmy6FqhgJsK9fKb/AZDoi+UywP/E6FgKMVP/wOyhtOFv1ak4
	Fc=
X-Google-Smtp-Source: AGHT+IGDU9s4YCVRp1TlClv7LzpZ8/y4Xvsa/pS4zEIDjDuftxOsIoJPo39ru+JeBBmRc4eZzWMKqSyJJk6KZ358dLI=
X-Received: by 2002:a05:6820:6081:b0:613:bd07:3f34 with SMTP id
 006d021491bc7-613bd0747demr850414eaf.0.1751909942469; Mon, 07 Jul 2025
 10:39:02 -0700 (PDT)
MIME-Version: 1.0
From: Brandon Perry <bperry.volatile@gmail.com>
Date: Mon, 7 Jul 2025 12:38:50 -0500
X-Gm-Features: Ac12FXyDZt3QVz2yKWuOMQKOJqXxJ2V-2klyJ6HVR8NZkzU76R3s54O5Tp007_U
Message-ID: <CAOJKFBBgP_ixci3K0=EdoXXk91=sLD-K5KYNDmYVVnKhYWeeRA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/mixed; boundary="000000000000ccce1006395a51e2"
Subject: [oss-security] Electric Charger Research

--000000000000ccce1006395a51e2
Content-Type: multipart/alternative; boundary="000000000000ccce0d06395a51e0"

--000000000000ccce0d06395a51e0
Content-Type: text/plain; charset="UTF-8"

Attached is a write-up of some research I've been doing since November last
year. The research covers the digital protocols used from an electric
vehicle -> charger (ISO-15118) and the protocols used to manage the charger
from a central management system (OCPP). I also cover some of the equipment
I've used to do the research.

tl;dr - Your vehicle charger port or EVSE charger cable is functionally a
network interface utilizing powerline communication over the control pilot
pin. Using a development kit for electric vehicle and charger research, I
showed how SSH can be configured to listen on the charger cable
accidentally, allowing a vehicle to initiate the network and authenticate
to the SSH server over the charger cable.

I also demonstrate two separate issues affecting open source CSMS
implementations, one a full denial of service, the other partial DoS.

You can also find this HTML file here: https://ocpp.us/howto.html

I hope this helps others. Thanks.

--000000000000ccce0d06395a51e0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Attached is a write-up of some research I&#39;ve been=
 doing since November=C2=A0last year. The research covers the digital proto=
cols used from an electric vehicle -&gt; charger (ISO-15118) and the protoc=
ols used to manage the charger from a central management system (OCPP). I a=
lso cover some of the equipment I&#39;ve used to do the research.</div><div=
><br></div><div>tl;dr - Your vehicle charger port or EVSE charger cable is =
functionally a network interface utilizing powerline communication over the=
 control pilot pin. Using a development kit for electric vehicle and charge=
r research, I showed how SSH can be configured to listen on the charger cab=
le accidentally, allowing a vehicle to initiate the network and authenticat=
e to the SSH server over the charger cable.</div><div><br></div><div>I also=
 demonstrate two separate issues affecting open source CSMS implementations=
, one a full denial of service, the other partial DoS.</div><div><br></div>=
<div>You can also find this HTML file here:=C2=A0<a href=3D"https://ocpp.us=
/howto.html">https://ocpp.us/howto.html</a></div><div><br></div><div>I hope=
 this helps others. Thanks.</div></div>

--000000000000ccce0d06395a51e0--

--000000000000ccce1006395a51e2--
