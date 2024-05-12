Received: (qmail 5917 invoked by uid 550); 13 May 2024 15:44:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10080 invoked from network); 12 May 2024 02:44:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715481866; x=1716086666; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:references:subject:cc:to
         :mime-version:user-agent:reply-to:from:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q8ZLumqogSKoJetp9ebUgw9ELSx5ZaPz0ltc3WllS7A=;
        b=Ezukf4r/wFF4ZgYZtPCx6fKUMTEkg+cBswg70g4aEvgdgeSsi0w3s0ZgLtZfXkYoPb
         iVuQFEopChyM8oKLaUWKfJ2yZcwl1J3lwL+H/5msQRy0heZutfKpG2SJ9HHCOf22fxpr
         5bQ7YdaV/YIdY+wAjrgvWIXm49nGMtoIBBkCIOfcC7OuIwmVSgu+5Yw1La5Tf6sdFe4H
         lbr7BMfE8LO4qy5rpYO0+0EdzolMrc0N5gnIJKYGWi5V8maELiSc+sPBKPKfawPrcknj
         1xRnbFsYniwygrd8VOzYhcreEj1oxeF1yhe4ZdKAju2sprTVJrpY1TFsxqQh3mnd3u1h
         9lkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715481866; x=1716086666;
        h=content-transfer-encoding:in-reply-to:references:subject:cc:to
         :mime-version:user-agent:reply-to:from:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=q8ZLumqogSKoJetp9ebUgw9ELSx5ZaPz0ltc3WllS7A=;
        b=i9vHnmm3t8kOTKnATuuUQfX0YihG3Dl3y7s+Dx17iZAOZMCZJpSCSUmtLeIjocNcHy
         jA944kN7S6oK3ieVvWssxdmrX8z+qtVzsT/RiE8Rp+gWJH/wqKyyOaHCqvjnrukT57u7
         ki8wZaFJPYPWsjPOwgYxaBUQVJSMxXA+NfWek1d7pzMILE2Ufxn/goKQ3smj0oWA1fkg
         2NSDdMPCscPUxz8sTDyXZUqlqGpuqScpUyADv3vOVZtzcX7pNnyPDtMcPB15bbXKjSVe
         Cnvg25wUrbFTWRqCswVWBktHact5eE7hwTHVWCMXvMH6FtqeAW6pHUbXCpXfmhLADAk9
         azkg==
X-Gm-Message-State: AOJu0Yz2fobGvkyMuOudyF8fBI9lavjEtU7+5LEDmx85VU6Jrg217/7f
	U6lWA6RXS7I1uBRtTAr2SgMGKNU1WNrg2RaCG6exT8/rR9v/QaaS7th34pYS
X-Google-Smtp-Source: AGHT+IF7FFzhhPxLUtkc1k8UF1RZdnRPP4lFUhaivo1jIWEeOSNzTeUAd+w3WwFGVF2J4qrOAtUPRQ==
X-Received: by 2002:a05:6830:45:b0:6f0:e557:5160 with SMTP id 46e09a7af769-6f0e9148dc9mr7965296a34.17.1715481865549;
        Sat, 11 May 2024 19:44:25 -0700 (PDT)
Message-ID: <66402D07.6010804@gmail.com>
Date: Sat, 11 May 2024 21:44:23 -0500
From: Jacob Bachmeyer <jcb62281@gmail.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.22) Gecko/20090807 MultiZilla/1.8.3.4e SeaMonkey/1.1.17 Mnenhy/0.7.6.0
MIME-Version: 1.0
To: oss-security@lists.openwall.com
CC: Corey Lopez <Corey.lopez09160587@hotmail.com>
References: <BYAPR03MB4903AF4B05EDB627E47C9370EBE72@BYAPR03MB4903.namprd03.prod.outlook.com> <20240511112123.GA2064@openwall.com>
In-Reply-To: <20240511112123.GA2064@openwall.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Microsoft Device Firmware Configuration Interface
 (DFCI) in Linux efivars directory

Solar Designer wrote:
> Hi,
>
> Corey's message is confused and there's no indication in it whether the
> system was compromised, so that part doesn't need further discussion,
> but as a moderator I don't mind someone explaining Linux's (and other
> systems') exposure of the EFI variables and DFCI and what it means for
> security as well as what it does not.
>   

While he is definitely somewhat confused, he claims at the start to have 
detected a compromise, but does not give details about the indications 
that led him to that conclusion.

As far as I can tell from a quick perusal, (landing at 
<URL:https://microsoft.github.io/mu/dyn/mu_feature_dfci/DfciPkg/Docs/Scenarios/DfciScenarios/>) 
it seems that DFCI "Zero Touch" is actually tightly bound to Microsoft 
cloud services, and there is supposed to be a local option to remove the 
zero touch certificate (thus disabling it more-or-less permanently) if 
DFCI is not in use on the machine.  The example implies that the UEFI 
configuration tool ("BIOS setup") should provide this option.


-- Jacob
