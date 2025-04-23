Received: (qmail 30691 invoked by uid 550); 23 Apr 2025 20:47:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30668 invoked from network); 23 Apr 2025 20:47:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745441239; x=1746046039; darn=lists.openwall.com;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VDsNZNder93r3rjllc8KxRm6jjqqCsH0NEu1U7KTDME=;
        b=gF+NKxT5aRi0lkDjTJVko8qAbvWW6rTSAwMVP03qKt48qjHlaH0bkeQEGnosUOy8Tl
         STcqAI+SzN9bKsrpUngWOBHlybPnO6avJ0n0yCDOlSt7UDJ0j5G6x0a26nxfyhMys7kV
         Ennlp/vAdAwww7MkVc3TyhbqwzCyEjfzvd/jsPuz7VNnzzWw97XaCLmG19FFnwXeJvph
         PmRWDTjDxqLWbnj8PzG24/iOWH/VkzPVxq1axyJ2SLgtb4RUusEZfYS2ISLB9xczQwFf
         /4onL19W5We0Hq2yGncve4gMploNn5ALF24CkTYeQfOzIylrc5Jy3F0ikQFGfaiIkfUT
         5aJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745441239; x=1746046039;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=VDsNZNder93r3rjllc8KxRm6jjqqCsH0NEu1U7KTDME=;
        b=LkE1BiLO8xJ264T1eetVuQR85dje8S+VXkBD5qWLj0ufhOG+udlOFyX8InIDasMsDB
         Xn0GtVVIF3NdURhB7a1gvUYtG0TyosjX+IZFTlBDc1oj1/nIXMx3M/T9bl7gJWwktwLQ
         E/jOwNMxSxNTq0qAcoM6iavXr0w1ZrQRct3qQjKif06p0S2ofhHnLHwQAegQQLXDdqFk
         W078o9wKw8w2V9bah2Mup6qWWL2o3xW4FQ4j6SbVncODoS7c4FCxSzP1LPzRY6CqPke2
         LkvhtNxl9p4iJFWzPyeS+5Lgk0s76aX+KzKrfC/sbvyfOyAXoSYq4bwEPCC/WTp+uPa8
         a/sg==
X-Gm-Message-State: AOJu0YyrCvYHnCdqf54bU7AsuCIU08Qp80wlWhDYp8xvpDvYCoUjLJbO
	ZIOpfU1vzLM7o/u+u9KAydNjYcYzvc9HliXXglcg6p6BQ23wxuncAPrjxpng
X-Gm-Gg: ASbGnctkEowh7NyaefUVnksaTAWr017h3JAiH5YiYU5SrEEOh4sfhZYLIy26S1kGIH/
	UjSra31pqXjoA7ykK6DltDk3WigOKWwEPQ69RO0jFVns95HQVTRGXwO7I6X0JR6rOC2SwjTSwvq
	faz+MvdfuZ/Ie0uyQBSATmTg6l2lh2ZezOWYSdDxRljje9cWzP8tj3wiDHLB2fO3OM3xYxJI9fJ
	lV1tTeiY7Hj7nses3q2Gkrtg/WEhWNjzIcBrReaPY79YPBmBW6YDXbnXTyRAAkEoqeN+J4wBXzC
	/kPrgDiJmfKNf4fx1dH31tEF7LLhct7MER2YermhBKs5366/t+QFoiWfxltIN/5vlZ8I66ogdg=
	=
X-Google-Smtp-Source: AGHT+IGH05isj9kplXC2gRfoX3OWOZSaJnUps7gKDDHuFTjJSNviy4lKrw4/+iLPakalJ1XRIva2dA==
X-Received: by 2002:a17:907:a088:b0:ac3:3fe4:3378 with SMTP id a640c23a62f3a-ace570e6d27mr18263966b.12.1745441239353;
        Wed, 23 Apr 2025 13:47:19 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Wed, 23 Apr 2025 22:47:17 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <aAlR1aTrs_8mvChM@eldamar.lan>
References: <575DB6B1-8A9A-46C6-AA2C-9D0695E1FF85@contoso.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <575DB6B1-8A9A-46C6-AA2C-9D0695E1FF85@contoso.com>
Subject: Re: [oss-security] vulnerabilities in busybox tar and cpio tools

Hi,

On Wed, Apr 23, 2025 at 02:11:44PM +0000, Ian Norton wrote:
> 
> https://bugs.busybox.net/show_bug.cgi?id=16018  (awaiting CVE)
> 
> Busybox's cpio and tar tools will print un-escaped filenames when listing and unpacking
> cpio and tar files. Malicious files containing filenames with terminal escapes can be used
> to mask or modify earlier or later files in the archive from anyone running busybox tar or cpio
> from a terminal.

FTR, this one has assigned CVE-2025-46394 .

Regards,
Salvatore
