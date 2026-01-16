Received: (qmail 18145 invoked by uid 550); 16 Jan 2026 07:39:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18118 invoked from network); 16 Jan 2026 07:39:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768549135; x=1769153935; darn=lists.openwall.com;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8Ibyu4a//5ZuGHkq1LC4sQNMTfnO3x0hDuO4cNrrYX8=;
        b=iLUjy9R6jrAsJ9w+nUtdw5F/VE1XXnCT9AZzawx6EPkVLZDEUZNeeDQ3t5Trkw7VQd
         7Pz7gJPjzzh1IribPszDeMVOeqLSZtnEwWWnx26CTqYeJZ/vZ5KGUWC9q0M7gx62miSA
         BEI75GySPdKeTAXd9epPYGYLJABqNbZHohL/DO79raaVDUAGiVmaizXPduLfQhO4b4p0
         SXFczeEp1jh6xmy+kC7B/0UN+4+KDBNJqNap5mElb+ojB0ZIX5GVAKX7ulHwr7esK96a
         27O02Uc0kYWhVUBISun2rrqS+/ldvdg+vSpy7DMKfvTcNdDm+oFNrkbLWlqC4cIAe0kM
         2f8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768549135; x=1769153935;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8Ibyu4a//5ZuGHkq1LC4sQNMTfnO3x0hDuO4cNrrYX8=;
        b=g96uRoaWkc+RWHMBy+BjvMdw4aEnGbVdGGQHMl/sKSZqyrwvf6gvsCRWFlsy93PqNt
         pRy4qrIVCGHJid6dA39gIrdAceKLdFQbrBMickrqv9D2RCzyI8Ugf0b//vCgq5GO1uw6
         QiiQtXfCUgP4iEGAJRKd8t8hGQuADZLUQqAl0aRWG/EHNxSXLJGZXauhMNKORREpeNoH
         XYiqACkmxBnBJRr8f8kKIK9VBufRO7mbqHlh69u376ihHNYZRT5LTjB6rpfEm8Cnr7Eu
         mSkCkk4KMmVSIxuG/Y53SNRjsZgUWE9zt4cjvEU6yWlFCpM1TjkyXdVDT7mHiW2BS575
         /Kag==
X-Gm-Message-State: AOJu0YyuEYYDwnxZFp+JTn+2pJbYG610/n8zgb4ypTLUchk2IOwBf1i/
	ClA7ZMhGyOlYE0IDxeW0iYmTBMTrY852Gb7YYfCvGzOwOkeLiEX+cBn8yxOiS0Sh
X-Gm-Gg: AY/fxX6XbOFttf65E7O49A3UPLunE4eGW1QCz+7X82YvR7nIPqBQvtzc4hXqdx2JhUs
	tDCaBHr9Eqaug5vFo8RRoAIXOkfmY1UXCBva2lvUl2QqvBQGmlAaYqs/mP9D7Mr8cLy3mVjQYIQ
	3mDV6wJ5X8CGJ6Boc0FlboaGPllTLlQT+gxFbSGZikJ+SBOnuQ8lmonnnQfz4DDvaMv4NbS8ScF
	QgbZfPyZH6qzANuXv68W3PybxFs6XxSSS6UIzp0N7J7PD4b2m30zRvMllGAB5HdbeJO+e9MWXaa
	E3CeLf8blhe04PXRUiavzsMdrvKyqpG4A21Kj02OLkgrb6VE2uky2xTtkrwmKWlzoz9MwBTn5Q+
	Wha8xnDtWxwbHvoMpHLkszYXKbIGtc+gUKNj1PFj5FWEhiUgmMQ+9jkX0yMaotjydJ+yPFm1/Qf
	/auG3bDl7xe2Toq916XTzpPiNT8zCJJT7CXD6mR0uNhFAP
X-Received: by 2002:a05:6000:2f83:b0:432:5b81:480 with SMTP id ffacd0b85a97d-4356a03d2demr2019294f8f.24.1768549135199;
        Thu, 15 Jan 2026 23:38:55 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Fri, 16 Jan 2026 08:38:53 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <aWnrDbvAtCV5ivXZ@eldamar.lan>
References: <aWkInhuT5D-s-MOh@yuggoth.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aWkInhuT5D-s-MOh@yuggoth.org>
Subject: Re: [oss-security] [CVE-2026-22797] OpenStack keystonemiddleware:
 Privilege Escalation via Identity Headers in External OAuth2 Tokens
 (CVE-2026-22797)

Hi,

On Thu, Jan 15, 2026 at 03:32:46PM +0000, Jeremy Stanley wrote:
> ====================================================================
> OSSA-2026-001: Privilege Escalation via Identity Headers in External
>                OAuth2 Tokens
> ====================================================================
> 
> :Date: January 15, 2026
> :CVE: CVE-2026-22797
> 
> Affects
> ~~~~~~~
> - Keystonemiddleware: >=10.0.0 <10.7.2, >=10.8.0 <10.9.1, >=10.10.0 <10.12.1

Just a small note here, the range might be adapted to something newer
thatn 10.5.0, correct? AFAIU the code was only added in
https://github.com/openstack/keystonemiddleware/commit/de15a610e160defb367b224258498727384d10a8
which landed in 10.5.0.

is this correct?

Regards,
Salvatore
