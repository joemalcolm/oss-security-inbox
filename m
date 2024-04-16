Received: (qmail 21969 invoked by uid 550); 16 Apr 2024 21:33:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16319 invoked from network); 16 Apr 2024 21:32:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713303115; x=1713907915; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=CVQt0WvORjcIVJI+kPg8IyFxYWWM7g+VFExqXaArAIE=;
        b=AeNH/pye1+O4bxbH7FJNhxDftICKFVbgWnn8nRKQkKoEfxea6ibsgtFFHjn8s8mr1r
         UGt8JaijhmHRbwh3J2U7E6acypSNTmbkqlJ9Nv0BI5mNvfhEp2Q/g4p9RP6gtb+OUNGT
         5rjeVlEyFOcqOHqHUrNjlTojOqRocXPOjEhiRgbbhBRo1IsuIrvPN3lvXiG5wZrD5rut
         GANZo4n8gb3FdPd7idkrCGdKsLat+IR2SFTPBK/xzoBqGEjpDVA5KSVHnK0wMuYNilje
         O2kjOx9vGsYXP3cWJwRdYH2Jr+Laz5zkhZObQkizq8MAyroAnehTRGgy7YVS6EeJaNj6
         s4VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713303115; x=1713907915;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CVQt0WvORjcIVJI+kPg8IyFxYWWM7g+VFExqXaArAIE=;
        b=o7/iKsYvudOfF5xGqt3qkMPJYcgZNx1LHztRCuoGujmUhxwicuY2Fa/unBi/+yB+Q7
         7QP8aEMxQtxWkMn4VWuDs8uhlXDwLC+KL1wmaQ4AFIzzNtcUnQCJAGguF0mwP5KfSNr7
         +N4+e6ms3ig3ZV4YhR1kQSSTOrUet+xG8deEBPjQGfAuGPJc1tvU9kJRtC3VVL/h7VU/
         8XILr/gLMLxboAApin0W9OjBgTsBqHtgfY20cL1WmhLwHZxkFmwtklXaO8/5D5lZtZEL
         qACpjguHZm9pgG/KvAORJvcIUvAFkFNo8/TcsMeuBHl18iPWhaNL66M6m+AG4R9vRjjC
         cYIg==
X-Gm-Message-State: AOJu0Yz/7w9A+GXtFtV0qLMB1kVHrEqIIszZe0VhsBdn0ulv/5HQRVgR
	bKWdWeWbV80u8/EyO4bc4Ltasqi5X7OTT1ARSItreNLn53VxWSIWRHhvtIgdd5H99Sa1W4oPvsy
	YdhT4fuijLdj51alizma2vR3/zOCcNQ==
X-Google-Smtp-Source: AGHT+IHsRRcQA2j4Iidj/dU3a/dN0NHdD61rK9koC92YRj41xPXBCKyd3ucAwhEL0eASnwqmMsIOTMUX22QRI0z9eH8=
X-Received: by 2002:a17:90a:f016:b0:2aa:c5a0:99a7 with SMTP id
 bt22-20020a17090af01600b002aac5a099a7mr2368056pjb.12.1713303114425; Tue, 16
 Apr 2024 14:31:54 -0700 (PDT)
MIME-Version: 1.0
From: Philippe Cerfon <philcerf@gmail.com>
Date: Tue, 16 Apr 2024 23:31:43 +0200
Message-ID: <CAN+za=Opi5h4o1vi1pgqf7NikTQAhZ5tYPHqU+Quwv4WUZdxMQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000872b1a06163d7777"
Subject: Re: [oss-security] Linux: Disabling network namespaces

--000000000000872b1a06163d7777
Content-Type: text/plain; charset="UTF-8"

Hey.

There's even an allegedly "wontfix" bug of mine where I requested that
Debian switches back to a secure default and disables user namesapce which
have a long history of being exploitable:
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=1012547

Don't think the current hole one will have been the last one.

Unfortunately it seems a feature that only a group of people will need is
valued more important than keeping users secure. :-(

Regards,
Philippe

--000000000000872b1a06163d7777--
