X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["498" "Wednesday" "7" "December" "2016" "11:16:50" "+0800" "haojun hou" "haojunhou@gmail.com" "<CAF5d3DCBfzbqYAA3y06QX50YRfLJEkXkW_k+agEpverKZSKuGw@mail.gmail.com>" "18" "[oss-security] CVE request - BigTree CMS 4.2.13 - Cross-Site Scripting (XSS)" nil nil nil "12" "2016120703:16:50" "[oss-security] CVE request - BigTree CMS 4.2.13 - Cross-Site Scripting (XSS)" (number mark "U       haojunhou@gm Dec  7   18/498   " thread-indent "\"[oss-security] CVE request - BigTree CMS 4.2.13 - Cross-Site Scripting (XSS)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27986 invoked by uid 550); 7 Dec 2016 03:17:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27679 invoked from network); 7 Dec 2016 03:17:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=ZJjlVomg5WzOxJhL0zWiBsoEYZ2p16IPcIM2ONyP2ro=;
        b=lM0NOGuS0uF9FXfnS+mg1z2g041OqfH71zFdLKZjyj+yLYlFIIiC/S4m0asIzovOaa
         XC1ry8mH+pS741b7D/8L/wHHGIFSMP7FN49bRElqYBTIhCfY0p3/TBXyFbQiDLCLyS8j
         qcZycGQ5Tbfm1F+UVb2l9D3SUCnpPzokX1jbfJHF1dR8+Oz9W2uJhMZxueiJMsnPcPaw
         ASYPU7zH8tnd0CKc3jdFpnkAbysBv1k7TX3ZPQaesRgJo2FtgTZcvC9bbKgv1bNUnpFk
         Y5hRXr8BEov5v8zer9eQtubiJ7uV04g705il3+tHm3cSuh4kN/LClHR7adS9bvyWWTrr
         fMdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=ZJjlVomg5WzOxJhL0zWiBsoEYZ2p16IPcIM2ONyP2ro=;
        b=ZylfTkhjUpdJbxeQr+emypYLMDVBPoOdIAsnkAkzbjA0Xq0Cpssds/feOc9OgnfkuH
         RstCMud3mm2zffApERjjW0Dz3qPlaCRabzgcYzblSeEfi1tOh1RlxRK3jDHIT0GcNn6c
         bAgKxULZu0gN6GnCQbXnYwj2e1A2dSMQiaMKeE949ytKqhNdT5IxrJ4k8bDA8T0zQ+u+
         az2/JbS14rTG2a8YjF4sJb1y9uxw+1Ed7wPT6dZh6RynuFsmLxAHSxPh0ZqnIHeaDtWb
         Okt4O/6nDYiGk4QzqUUsBdG6eCIhXBb049+KpW49ERtV/gJbu+Jw6zQ4hsW18sGPPVbU
         IxDQ==
X-Gm-Message-State: AKaTC03XgOEEgtN+8rdyzgHbGpmKAixYK0ZffMblp3oRp8p8QvIZ3SEJRgOH2rSrtOGcLjAcy9ykCFTNDJTcVg==
X-Received: by 10.176.69.171 with SMTP id u40mr51119168uau.24.1481080610625;
 Tue, 06 Dec 2016 19:16:50 -0800 (PST)
MIME-Version: 1.0
From: haojun hou <haojunhou@gmail.com>
Date: Wed, 7 Dec 2016 11:16:50 +0800
Message-ID: <CAF5d3DCBfzbqYAA3y06QX50YRfLJEkXkW_k+agEpverKZSKuGw@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: mr@timbuckingham.com, cve-assign@mitre.org
Content-Type: multipart/alternative; boundary=94eb2c11c080ae1ea7054308f326
Subject: [oss-security] CVE request - BigTree CMS 4.2.13 - Cross-Site
 Scripting (XSS)

--94eb2c11c080ae1ea7054308f326
Content-Type: text/plain; charset=UTF-8

If suitable for a CVE please assign one for BigTree CMS reflected
cross-site scripting vulnerability. Thanks.

Affected version: 4.2.13

Reported by Tim Buckingham in
https://github.com/bigtreecms/BigTree-CMS/issues/264
<https://github.com/bigtreecms/BigTree-CMS/pull/256>

Fixed in:
https://github.com/bigtreecms/BigTree-CMS/commit/59ebef5978f80e2fdc7b4db4a28b668c5a39fbc3

Thanks & Regards

--94eb2c11c080ae1ea7054308f326--
