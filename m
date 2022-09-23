Received: (qmail 19561 invoked by uid 550); 23 Sep 2022 17:12:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27664 invoked from network); 23 Sep 2022 16:31:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :from:to:cc:subject:date;
        bh=VFKNXOqdg312uzTxB8ewLpBiSOfO18CtRNTSyWUzw9I=;
        b=pbk8QCCOFbXTw7zhZjI7y7K39jzR5qGJijV+T1CSq3dPxk0eY/OzIZTfZw+U6ah2DZ
         JdT96OjvEQXMT2O0vpwG9F+fjPnaf1Ijn8yesy1Ar7aXSMPk3LgbdTnRdwQoELPetcJS
         mbQg1o1b6pJizqfNNnn2nkE3JJyk1ijm/nmPIQijPrgicFNElFy2CNgwpQ+/0j6MDDFB
         n6HsF2GWj7f0iLSJQEi14huMAQyVHnun0+EUmt/qLeeBzTIa9WWYI37SIrK/Q20T8xow
         5BAr97EJpWisNco843J81tS6bHCkQH5J6unPIX4waGIflsqjdemMgzKmr8cBvoGibWTy
         yLvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :x-gm-message-state:from:to:cc:subject:date;
        bh=VFKNXOqdg312uzTxB8ewLpBiSOfO18CtRNTSyWUzw9I=;
        b=ST0htNa/IBRC5H15vOuYjWHYuldKtOjuAD51ydPHlNEqoiLCZPr+T8ic33eqCo3CcG
         WZszsPYuphHRDLI8EAQh9LXOotXoB6Nc2LDKwBG/IZoWoRUwfImn3NvSyPOuHmWxRvrQ
         s8mDLD5jb2aXWwhLleNb0UVK+Phb9x2CsAwUjiwLReiTxI8cBTEg2s4LW0YTJ9qHlKM2
         tqVGrik84HcBduravtcA2Mg8A7t3CZXQxJo/fBWpcBjvyv1VOh8EY/VfNPiGhI68SfHz
         4wgutuck0BYfDWpshjNFaAqQCWOdO4fpJwUsJMzwErh0idkbB9FEoz+w7lu7VKVzo+Am
         Ttgg==
X-Gm-Message-State: ACrzQf3fUSxmt5lIDrJvw12skabP4kd7ZRNgJQdBVBO7qxSCJ6utzGSH
	u3dvqE79eyJwGcrn3HnAeEZEOVTdwQ==
X-Google-Smtp-Source: AMsMyM4SR+ZPECjeKI79XhiLAyTjtf28GNkD0YV84kozARzlFC/9Fdsz0CIrWpAcB2pnnBWf2VwB+qoLcA==
X-Received: by 2002:a05:620a:10bc:b0:6ce:4169:7bcc with SMTP id h28-20020a05620a10bc00b006ce41697bccmr6325391qkk.732.1663950692271;
        Fri, 23 Sep 2022 09:31:32 -0700 (PDT)
Date: Fri, 23 Sep 2022 09:31:32 -0700 (PDT)
From: Vladimir de Turckheim <vdeturckheim@gmail.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-Id: <76e4d5bd-40ac-4fa0-bd02-84ff3ca2b232n@googlegroups.com>
In-Reply-To: <5d68f15a-36dd-43eb-8bb9-67d3eb269a98n@googlegroups.com>
References: <5d68f15a-36dd-43eb-8bb9-67d3eb269a98n@googlegroups.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1598_1968578987.1663950692085"
Subject: [oss-security] Fwd: Node.js security updates for all active release lines,
 September 2022

------=_Part_1598_1968578987.1663950692085
Content-Type: multipart/alternative; 
	boundary="----=_Part_1599_1248975167.1663950692085"

------=_Part_1599_1248975167.1663950692085
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



---------- Forwarded message ---------
From: Vladimir de Turckheim <vdeturckheim@gmail.com>
Date: Friday, September 23, 2022 at 6:31:08 PM UTC+2
Subject: Node.js security updates for all active release lines, September 
2022
To: nodejs-sec <nodejs-sec@googlegroups.com>


The Node.js project has now released new versions of all supported release 
lines. For more information see: 
https://nodejs.org/en/blog/vulnerability/september-2022-security-releases/

------=_Part_1599_1248975167.1663950692085
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<br><br><div class="gmail_quote"><div dir="auto" class="gmail_attr">---------- Forwarded message ---------<br>From: <span dir="auto">Vladimir de Turckheim &lt;vdeturckheim@gmail.com&gt;</span><br>Date: Friday, September 23, 2022 at 6:31:08 PM UTC+2<br>Subject: Node.js security updates for all active release lines, September 2022<br>To: <span dir="auto">nodejs-sec &lt;nodejs-sec@googlegroups.com&gt;</span><br></div><br><br><html-blob>The Node.js project has now released new versions of all supported release lines.
For more information see: <a href="https://nodejs.org/en/blog/vulnerability/september-2022-security-releases/" target="_blank" rel="nofollow" data-saferedirecturl="https://www.google.com/url?hl=en&amp;q=https://nodejs.org/en/blog/vulnerability/september-2022-security-releases/&amp;source=gmail&amp;ust=1664037076143000&amp;usg=AOvVaw1IOmTK_tD93-W95eT9Vg44">https://nodejs.org/en/blog/vulnerability/september-2022-security-releases/</a><br></html-blob></div>
------=_Part_1599_1248975167.1663950692085--

------=_Part_1598_1968578987.1663950692085--
