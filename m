Received: (qmail 5334 invoked by uid 550); 22 Sep 2022 20:58:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18036 invoked from network); 22 Sep 2022 20:19:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :from:to:cc:subject:date;
        bh=IUVPERws9VJWduR8c4K7WtVay5FGE1ZYrGoWTAgL2FI=;
        b=WNEb4eJxfnGQM70nqFC5vsFddPsxbL33uoZqTXn5P8kjz71VdLUdO0sXYVGazYZSOZ
         SEKoiRJUay1gQYAAqLJgE+lyhAkTb1Bys78PwoOTis7+J6N/qBjWDU9rjlf4+BNqJQd4
         c62ASqBGiTJMjbO87zHOSIGswYPAXOFdk2YdPrUdK4bSgIE8pp48BX6Ff9eETFnNymXb
         V2ZlBUKDhjZLMhfPLBDaXuwiZDYLWuKMC8kkZ+s9DTQBVf0qS8IP5HbOCsz9FpuOgyUf
         Ep8ClgGC5Lm4MOiRFAQ0R7U0nTyig/jN1VYnb1wOkDCf8RQnT18ooZhqxIZXt+OpMJcD
         L09A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :x-gm-message-state:from:to:cc:subject:date;
        bh=IUVPERws9VJWduR8c4K7WtVay5FGE1ZYrGoWTAgL2FI=;
        b=aNbmR2GpPNFYLI4yDtBccxbPEKoezTuDFbh0rGt9UaJvQB8cysJZQCOQswgSoP9aQx
         VZR9UDOnEoqdlZ9Ip4acUptu/DKYupL5030BQ2gtjiJ0GC6l7Tewx5iXqs0ik19QZlt0
         GSKIYNmHVXPexanpOunBQLEdtf59LD8DKSMDGOqRU3VVe1znBc/XqnC5GmAdrRDm7Eym
         W2+32ILcNt9XRVrYw0NciYVldOZUtE8HFrii1M+j4KNME+uOfS7vc63zHDBEDB5xNdJr
         XvW+k6OVeBc7vhSlfKEGhHb0ZsKLlpAsDmx+p7GuEhneWjyKTzYRY03m630chFdUE5Sv
         LN2w==
X-Gm-Message-State: ACrzQf3Jaxy/27E0JFYV7cFzfV+d09u8jbLDSi5BV9+mAiWMG30wpfPk
	TmL/eKUmzOMMv/15HI+IVde9AAzXnw==
X-Google-Smtp-Source: AMsMyM5jiJYrZGrM7IoOTVZjbFpsoKJbkJWpb2Kv4EylRiVbNb25Jcbww1AFj9dHX/d4Bzb+fnyRz57sPA==
X-Received: by 2002:a05:622a:1:b0:35c:fa22:1046 with SMTP id x1-20020a05622a000100b0035cfa221046mr4535427qtw.340.1663877936991;
        Thu, 22 Sep 2022 13:18:56 -0700 (PDT)
Date: Thu, 22 Sep 2022 13:18:56 -0700 (PDT)
From: Vladimir de Turckheim <vdeturckheim@gmail.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-Id: <71bd506a-bbfc-44fc-962d-f034683d2f98n@googlegroups.com>
In-Reply-To: <d3f3f57e-3887-4917-a7e0-13fe67bcdf78n@googlegroups.com>
References: <d3f3f57e-3887-4917-a7e0-13fe67bcdf78n@googlegroups.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1562_1775777691.1663877936825"
Subject: [oss-security] Fwd: [Postponed] Node.js security updates for all active release
 lines, September 2022

------=_Part_1562_1775777691.1663877936825
Content-Type: multipart/alternative; 
	boundary="----=_Part_1563_1304190754.1663877936825"

------=_Part_1563_1304190754.1663877936825
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



---------- Forwarded message ---------
From: Vladimir de Turckheim <vdeturckheim@gmail.com>
Date: Thursday, September 22, 2022 at 10:18:40 PM UTC+2
Subject: [Postponed] Node.js security updates for all active release lines, 
September 2022
To: nodejs-sec <nodejs-sec@googlegroups.com>


Some fixes of the security releases have been recently updated and the 
Node.js security team still needs an extra day of work to ensure the 
binaries are ready to release. We would like to thank you for your patience 
and understanding. The releases are now planned for September 23rd 2022.

------=_Part_1563_1304190754.1663877936825
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<br><br><div class="gmail_quote"><div dir="auto" class="gmail_attr">---------- Forwarded message ---------<br>From: <span dir="auto">Vladimir de Turckheim &lt;vdeturckheim@gmail.com&gt;</span><br>Date: Thursday, September 22, 2022 at 10:18:40 PM UTC+2<br>Subject: [Postponed] Node.js security updates for all active release lines, September 2022<br>To: <span dir="auto">nodejs-sec &lt;nodejs-sec@googlegroups.com&gt;</span><br></div><br><br><html-blob>Some fixes of the security releases have been recently updated and the Node.js security team still needs an extra day of work to ensure the binaries are ready to release.
We would like to thank you for your patience and understanding.
The releases are now planned for September 23rd 2022.<br></html-blob></div>
------=_Part_1563_1304190754.1663877936825--

------=_Part_1562_1775777691.1663877936825--
