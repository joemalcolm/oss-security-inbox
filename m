Received: (qmail 5855 invoked by uid 550); 29 Dec 2022 09:50:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5834 invoked from network); 29 Dec 2022 09:50:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6tSCkq+l40cOoO02PEYgzjWeeRXVQNjaHl23GfMqjps=;
        b=j8Uk50xqQU04QsZXhlXiEWWD670IGmk3ZJZjNly9Km020BR7M+UnXVwLaJessT9jfW
         0Cbf8PpCZsguO+0VyrrpEoHnbY52pX8dEhH9vmqYoXPeJgTRmw/IagOwjBZRT3PmLdBA
         39ZSPxX7WKvOdM/9XGzycN1Uhkh0ZVACi5IjnsaoEQMCkO58zmp7/MPH5BNmuv81eZ3D
         KzVMb52AGke+zdUIndC+nExVw74/72rsvIjWLXBNc7b3hSxmm7aYE3w5X5FqFeW93LIM
         LHbLSAJejRfcws33Mi1VS7384wj+2nN7/smQJhV5yvJTwrj0eMqdt+APZXYCIv5IT1zi
         3h3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6tSCkq+l40cOoO02PEYgzjWeeRXVQNjaHl23GfMqjps=;
        b=D3Lew2nAl0nyzU7fbXcaAbYd3DWUODKFfZrgz7pUY6N5QBmXIydfj9wcwhVP1ir2nT
         vOMKUk++xGCPGiFRGCoITnDb6dNe5VOKT91qf85luJO8LY32VWWPN4Y8RXIzorkrRbrt
         k0fCgVASz5n3USq1GDfISU2aemQwb83j+mvjr7mIqgofo3vdQErwlToX9v9/USrcP73R
         rPzVbl1JTGOjD1y7ZnogkR2gjJuYlZmXx103yNNEW4maCZtJhEPuBKm92fRd/NB7vSy+
         UjzwA/f/JM1inBZCTmJlISgOPeEmG7kSnKVc50rAG0mNB5DVYrZXTcHWhCXQVterYvfD
         x59g==
X-Gm-Message-State: AFqh2kpMIzQYmFT9J4SZU2STDYOoOdOq6EoBL8kUwLToj3z3wzE5RciX
	JGYyJtoqvGE6QLbX9BFXp0E=
X-Google-Smtp-Source: AMrXdXsOsohoW2WFVo1jaQOJI3a7R/tKL1xYHCnOK7kL8XvugW15YwTy/iKdQsxv4ucDv7DoeKznvg==
X-Received: by 2002:adf:fd89:0:b0:24f:5890:6168 with SMTP id d9-20020adffd89000000b0024f58906168mr17681030wrr.10.1672307428410;
        Thu, 29 Dec 2022 01:50:28 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Thu, 29 Dec 2022 10:50:26 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Cc: jorton@apache.org
Message-ID: <Y61i4ojYhvXXx7Ap@eldamar.lan>
References: <d1b6acf9-0f59-1954-ccad-2243ca03d138@apache.org>
 <YwjuUy0a6FFdHPVB@gentoo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YwjuUy0a6FFdHPVB@gentoo.org>
Subject: Re: [oss-security] CVE-2022-22728: libapreq2: libapreq2 multipart
 form parse memory corruption

Hi,

On Fri, Aug 26, 2022 at 11:01:23AM -0500, John Helmert III wrote:
> On Thu, Aug 25, 2022 at 02:09:16PM +0000, Joe Orton wrote:
> > Severity: important
> > 
> > Description:
> > 
> > A flaw in libapreq2 versions 2.16 and earlier could cause a buffer
> > overflow while processing multipart form uploads.  A remote
> > attacker could send a request causing a process crash which could
> > lead to a denial of service attack.
> > 
> 
> Is there a fixed version or patch or upstream issue?

Any pointers or information to this?

Regards,
Salvatore
