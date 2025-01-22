Received: (qmail 7606 invoked by uid 550); 22 Jan 2025 02:31:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7559 invoked from network); 22 Jan 2025 02:31:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737513095; x=1738117895; darn=lists.openwall.com;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5yZoTOGtI9/gMPXTJ0Te0ZhAiGrYCrkAeoT2YJDJca4=;
        b=Wg6xnoeJt8HtnwxP5ocj/CuwFYWaPMyL6NFbANxykzXeMUFGtGxVRkHpZjM8TDDTlm
         GOOL+n0JUU4FCpgqmorE1JwZ6n9+Ks/eExAJiRoWQ+hmfLpkRWWCAJW8Wz3ZoPl6GWj1
         6LmLWZkXv8LQp+71Ssws9IgZ0QFKDphj7Fs8vn/t+hRWvjIzyBQaDSrOuYliAxjMIj2G
         tB6eIgJ0gwaUfQhAxL/A7aj6s7KUf4tdLb3NMlvUPQ3a+17IndBNaAWjdYlMDruY4mnm
         8jDR5j9g6X0SeQY4b2866v2/9TrM8rbYOUzPcPX8LX5X3GHfSN8FYXiPPa4nOcCgFCRc
         ooyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737513095; x=1738117895;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5yZoTOGtI9/gMPXTJ0Te0ZhAiGrYCrkAeoT2YJDJca4=;
        b=AjDVTZMhjqcPFmjjbRbD3XAHV5yltPcvATdGgD+owBA0OrYTa5jTedYRMWvNKt7uuT
         5q+ikp67yt85DPBw244TAt+4RAquAcLfj+HI1vNB2jGR0xQD79ExNXAKF2mo04i7sCqF
         osJKefvfTNnK1CFteu+ma8TTB1dFCd1rjf1Y3RSIO1dyvY/vr8Yc17dYnH+LHuyqNRDI
         ZmU2aY+Zstu96vF5MJB65bnQGdiE/obNvkDmz6N0oLR1T9IsTtq5FfqeryqmI/lsut7m
         pD6hAu49KAGkDM5Q6eTQryXiLzKiRJARwc/JMq0F4fSqUGAQxN5jyg3xkYIOADWyII8i
         +Dug==
X-Gm-Message-State: AOJu0YxpYNRnDBJgvn718a9ePMgBGJPKK1BT6C0vayB54Kof81QpGR/9
	awuFQUxjCuOec6AOddGTFc+vb/GOm2tPThLcHBH5xc0iznWD8oBU83h3HQ==
X-Gm-Gg: ASbGncvdir+N7F//esyavcbccgpawlwhxF4shpXU9sB5I3vEVizz385mvwdB3QI4Del
	Iy+pPxFxbcO4fTOb5Kyg1ZdYC0KSgh0jB9AtFAyKSomkAswngEpq2kayiguuFaoCDSfeAUlGqK8
	dIUKM5J3R2R3aEOJ85A72rcvZhcIVUKFbzdNcS6JexWLElHv1qkGJkiCsFdycJO7XqdubtKkXmH
	d04lMY+B2gld4Pnxb8OpRExnJeEb9F6tkVqBcAKdYAWF+ov5RTcNBrve38RhF9ojY1BNCOnXLvt
	qAKnZKiXDlhVYsuTMWes0zp7azmHygRuHlVcrAkUThy48Pw56zjAET4jv1w0kLHp9QZeQbE1rQk
	=
X-Google-Smtp-Source: AGHT+IHrToEuC1D70MOg+2+K1PRFl6KFpb+sDqEi7trVuLzae5Fkh6hd0xoYRrgIrkk93/XDNzZQrg==
X-Received: by 2002:a17:902:ce0e:b0:215:b75f:a1d8 with SMTP id d9443c01a7336-21c355392f5mr113611035ad.2.1737513093125;
        Tue, 21 Jan 2025 18:31:33 -0800 (PST)
Date: Tue, 21 Jan 2025 18:31:31 -0800
From: Tavis Ormandy <taviso@gmail.com>
To: Open Source Security <oss-security@lists.openwall.com>
Message-ID: <Z5BYg9WPFBF7JBEB@thinkstation.cmpxchg8b.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/2.1.4 (2021-12-11)
Subject: [oss-security] AMD Microcode Signature Verification Vulnerability

It looks like an OEM leaked the patch for a major upcoming CPU
vulnerability, i.e. "AMD Microcode Signature Verification
Vulnerability":

https://rog.asus.com/motherboards/rog-strix/rog-strix-x870-i-gaming-wifi/helpdesk_bios/

I'm not thrilled about this - the patch is *not* currently in
linux-firmware, so this is the only publicly available patch.

However, other people are discussing how to extract them:

https://winraid.level1techs.com/t/offer-intel-amd-via-cpu-microcode-archives-1995-present/102857/53

Tavis.

-- 
 _o)            $ lynx lock.cmpxchg8b.com
 /\\  _o)  _o)  $ finger taviso@sdf.org
_\_V _( ) _( )  @taviso
