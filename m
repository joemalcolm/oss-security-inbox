X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["961" "Friday" "13" "September" "2019" "11:19:05" "-0300" "Thiago H. de Paula Figueiredo" "thiagohp@gmail.com" "<CAE_88GZ56+bOh7t_Og1LOMmif4aQo3Y-Zdx_zzp_ufJciOhQ9w@mail.gmail.com>" "29" "[oss-security] [CVE-2019-0195] Apache Tapestry vulnerability disclosure" nil nil nil "9" "2019091314:19:05" "[oss-security] [CVE-2019-0195] Apache Tapestry vulnerability disclosure" (number mark "U       thiagohp@gma Sep 13   29/961   " thread-indent "\"[oss-security] [CVE-2019-0195] Apache Tapestry vulnerability disclosure\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-0195] Apache Tapestry vulnerability disclosure" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27766 invoked by uid 550); 13 Sep 2019 17:46:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17683 invoked from network); 13 Sep 2019 14:19:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=OQQO5ZJJ4RXQUW5QxwWLwzAR3fNsUyalKdk+mNFt/JM=;
        b=lkTnL4pczW+2Ly47Ga/Lht86UZ4MN0CLo5yHnSgRdOAs2m2jvUWvAuimdTuDXI6z8b
         PLfqqm+Ukgb6AWibkdB+XKfqW/ScxaWdAeQBgFIjJeg88AxQS2y8n9xtZijpllVIeap6
         A7j/UZidXhRX1nI58rB/VI+qwTNlCi2iTWj48jVRWgF060XDG0IpOn+mtbGlHCapJVO9
         winyvqlK5ZgRe3ILYQH7ooP5f02U4YUYm96GU8Iopb28YvrptN41xj+a21QsSDNyAEls
         J6COGNUUZEKrIa6fOKm3sdj1emtGf9ygLPXv21FQcUg/BHaG+bPRjqfBFrN/1QUG4A6J
         HLNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=OQQO5ZJJ4RXQUW5QxwWLwzAR3fNsUyalKdk+mNFt/JM=;
        b=tSG7V9GivEjab3WpKF7XkNl5K2Q2vznCYif3v0gbS4S68c4J9J/tlsX1lc7v4HSMg/
         ipWbiQB9ZOoZzv51cVGJD/7dX794oo+9fC1mj7ESEHy2lfuhJWiYp3/4gKjNQNeGI+up
         BvKwNTjkTsNCSavHO6yL0UsArhnRq6sn/G86Twwq9KoVdkpTn8FbIU5WRtr75VTcLtzX
         DO+hFyZmzHcIdGsN5WuaVU8DMBqjP1WeXHvSpjdzUQXyglm9TjdVWt+ZZwIwcfqTW6ae
         QWTfrRHUZrI5/mODs7I6LyZ+BgoB1oKBiSOYoUDbQaG9iYxrug24EooqRfOfIdUoeOIt
         uCLw==
X-Gm-Message-State: APjAAAUOnO5UKhtRYbPI9E7aoODKUOF4Dnxp+5OMNzP3jA1h1lMV8ycd
	sgR6MBncwSI/aYL7U3bWBIIlIftCUW7rTXbrBl1TRfNf
X-Google-Smtp-Source: APXvYqxaK/HhoJiCObuSrScRLOfUWWFZbX05wvGc7t04piOt3gni/rIpAozNRgjstm9ydhf8zckLdUHGGJIIJnoGeZA=
X-Received: by 2002:ac2:4289:: with SMTP id m9mr28426736lfh.139.1568384357041;
 Fri, 13 Sep 2019 07:19:17 -0700 (PDT)
MIME-Version: 1.0
From: "Thiago H. de Paula Figueiredo" <thiagohp@gmail.com>
Date: Fri, 13 Sep 2019 11:19:05 -0300
Message-ID: <CAE_88GZ56+bOh7t_Og1LOMmif4aQo3Y-Zdx_zzp_ufJciOhQ9w@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000790c5c05926ff09d"
Subject: [oss-security] [CVE-2019-0195] Apache Tapestry vulnerability disclosure

--000000000000790c5c05926ff09d
Content-Type: text/plain; charset="UTF-8"

CVE-2019-0195: File reading Leads Java Deserialization Vulnerability
Severity: important
Vendor: The Apache Software Foundation
Versions affected: all Apache Tapestry versions between 5.4.0, including
its betas, and 5.4.3

Description:
Manipulating classpath asset file URLs, an attacker could guess the path to
a known file in the classpath and have it downloaded. If the attacker found
the file with the value of the tapestry.hmac-passphrase configuration
symbol, most probably the webapp's AppModule class, the value of this
symbol could be used to craft a Java deserialization attack, thus running
malicious injected Java code. The vector would be the t:formdata parameter
from the Form component.

Mitigation:
Upgrade to Tapestry 5.4.5, which is a drop-in replacement for any 5.4.x
version.

Credit:
Ricter Zheng

-- 
Thiago H. de Paula Figueiredo

--000000000000790c5c05926ff09d--
