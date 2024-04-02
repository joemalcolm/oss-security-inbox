Received: (qmail 25889 invoked by uid 550); 2 Apr 2024 14:36:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19561 invoked from network); 2 Apr 2024 13:52:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rafaelgss.dev; s=google; t=1712065940; x=1712670740; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LWOYuWStQh72tnu86a7B33OAFdfjYPrtMTrX9TI99Es=;
        b=lsIBUezxMzw6+eWBXDztWXIsa44FCIQXunhxuV4jdHUrCOjD3zMGZoqG1qH3sYpQy6
         ewZV6dKnxg9nA4fDZNiTA37MhNJqfR/dblPPvbpFz0VCSRBc/MQonO55faAHTVE1d4ZU
         yJwnoGaw4vNZzdW8jqe80RUnR+IhwHvUdVGVqHZIdUxwXsIYSWajbEs4e9TzSt1Pyg6o
         ak9AC3/wty3CQ3VTdaWJqRxWNUJjYe5IyPHnnQVY1fkehPJ+fbc1RsnY+qvFRmW3Jwzv
         f2dBFBjPPrVkm2zsjsnnzrlnyHdijuc37REuBx6bXRPTBN2xuOU8aqk6xZFMzcCUls3P
         Z90g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712065940; x=1712670740;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LWOYuWStQh72tnu86a7B33OAFdfjYPrtMTrX9TI99Es=;
        b=ZSjZb7eeOTcdMbFYwxQ85ATabXZA9CvsXskaYepMkr5gcam6KMDq6/bzz4yqNgxz/6
         XtZhAtQc+GshCPgctizg/G5Gz967/n6uHJrhTXEpsYVe8TksE0Ms+0TFVN9WVwHYW3yN
         FclNTWunQoScX5kn2xrsijY+0k9ctMKMjZsr54vS1JwYLEHgyYoZEo3ItAGSRF+e6lZt
         G6u9Ip6g5aAenhUaTWMSV7otGB6z9dyhJNtU2MkysS1Gt8FiSNk0OC647bmLrvpqQSoQ
         Fk2MB51b1ATLWZ3axPKrwHfVWsw1vTDWP4y85zCrDf2wmihBvK5EV5vUfH0vhn+AxjSz
         t+4A==
X-Gm-Message-State: AOJu0Ywny/Wn8808ZEIFdQyfIiH4QpbUTT/LcPssb2Q+gJoMA8Z7jeT4
	9d2Hk5PJKCKlKXMTkOxlFRKr/AQiz3468RbpjTWymQHdeShfbBsqjT58wrEEtFtgitSBvr3ACVq
	8aTTa0VRdhx0XavBjSMvp22+l5+6/tTepGxayyBL3BWwGn8lN
X-Google-Smtp-Source: AGHT+IEVAXUaN55ASCjwnS1w3Yr+Z4ZAnARwT2nHUucyeB68Yr61Bhndhc9Mmr+jB/pZgOecyE4DrtP35D4/XnkmaKY=
X-Received: by 2002:a05:6512:3c9a:b0:513:d3a2:6350 with SMTP id
 h26-20020a0565123c9a00b00513d3a26350mr9101617lfv.66.1712065939824; Tue, 02
 Apr 2024 06:52:19 -0700 (PDT)
MIME-Version: 1.0
References: <4323cf07-8f42-46f8-b075-c12e50a917e7n@googlegroups.com>
In-Reply-To: <4323cf07-8f42-46f8-b075-c12e50a917e7n@googlegroups.com>
From: Rafael Gonzaga <work@rafaelgss.dev>
Date: Tue, 2 Apr 2024 10:52:08 -0300
Message-ID: <CAAWxexxWK_LqQjuMkKE5GrENvNCPRjDVJ9=42E4O7PazbPOq2A@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000002d2ba806151d6a6d"
Subject: [oss-security] Fwd: Node.js security update for all active release lines

--0000000000002d2ba806151d6a6d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

--------- Mensagem encaminhada ---------
De: work <work@rafaelgss.dev>
Data: ter., 2 de abr. de 2024 =C3=A0s 10:46
Assunto: Node.js security update for all active release lines
Para: nodejs-sec <nodejs-sec@googlegroups.com>


The Node.js project will release new versions of all supported release
lines on or shortly after Wednesday April 3rd 2024. For more information
see:  https://nodejs.org/en/blog/vulnerability/april-2024-security-releases

--=20
You received this message because you are subscribed to the Google Groups
"nodejs-sec" group.
To unsubscribe from this group and stop receiving emails from it, send an
email to nodejs-sec+unsubscribe@googlegroups.com.
To view this discussion on the web visit
https://groups.google.com/d/msgid/nodejs-sec/4323cf07-8f42-46f8-b075-c12e50=
a917e7n%40googlegroups.com
<https://groups.google.com/d/msgid/nodejs-sec/4323cf07-8f42-46f8-b075-c12e5=
0a917e7n%40googlegroups.com?utm_medium=3Demail&utm_source=3Dfooter>
=2E

--0000000000002d2ba806151d6a6d--
