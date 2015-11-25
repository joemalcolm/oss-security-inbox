X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["786" "Wednesday" "25" "November" "2015" "07:54:08" "-0800" "Reed Loden" "reed@reedloden.com" "<CALPTtNUugyG4V3nF4vRjLRtqJfFp2kYR_LM-J5V2Z8gGEypCMg@mail.gmail.com>" "24" "Re: [oss-security] Announcing https://github.com/RedHatProductSecurity/Certificates-Shipped/" "^Date:" nil nil "11" "2015112515:54:08" "[oss-security] Announcing https://github.com/RedHatProductSecurity/Certificates-Shipped/" (number mark "        reed@reedlod Nov 25   24/786   " thread-indent "\"Re: [oss-security] Announcing https://github.com/RedHatProductSecurity/Certificates-Shipped/\"\n") "<CANO=Ty2=+8uiYPoe06j3DEVd6uSBCNiaH5LoWyCqg18jWTZu6w@mail.gmail.com>" ("<CANO=Ty2=+8uiYPoe06j3DEVd6uSBCNiaH5LoWyCqg18jWTZu6w@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20419 invoked by uid 550); 25 Nov 2015 15:54:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20401 invoked from network); 25 Nov 2015 15:54:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reedloden.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-type;
        bh=2fCiBbWAsu1qR/7zJkDOEUtpgWhepOReuCm81juhQ0Y=;
        b=C3OKbdBwyjkqYenhOFPq32VaAMWcvyQgtmZKHR7xQKi1pAOFdYeQzpPGlKyrAy80AZ
         /RFnoY6iApSYai7y3uvDi/a8o9HgPNm99Z8BPiDc12HZ4K1MlX1E/hpfV7dYvFFaZKGO
         i8Z1/Z8KPpxcuUOnM3EO/OmMxdbWMim6aVI0g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-type;
        bh=2fCiBbWAsu1qR/7zJkDOEUtpgWhepOReuCm81juhQ0Y=;
        b=a5XT5QjShzegGVN7Sck+kC8fyvzdELSEJumS0ejOtLg0gpKn5s+ZaOc56PshNmYt7L
         FMOwhFa1RZ+hTieoB20tEvslvkxDRDhjvAasfV4gTAcAQosaSPJqh5ygcrIJP3P+6d21
         nALcKrod5mgnD+QgfRxpByZ8jiBD+V4yrt0elQpoN9jfb/2YdTT0IGqipCDJvlTF9Qna
         z5ffIddFuAFb924ccC+KaZzGbxezyQejgT8vJ4mbPX/Z0b0rFoI0ptF17Ow+pC7o2VeN
         I3aWB0YOIbTovb4NAIDXMjeYKp4X/YVdtvG2MBoQ4ymIFBfpHf5xYvWTC8zdcUS6K1qG
         Js4g==
X-Gm-Message-State: ALoCoQmbhHPxL8mvS54/H87cLxvgfym3mxuSpY8wJgPz/jdVNX6c75TQDtzfnZxTQGkWyI+Yo7de
X-Received: by 10.13.220.69 with SMTP id f66mr36692778ywe.161.1448466867539;
 Wed, 25 Nov 2015 07:54:27 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CANO=Ty2=+8uiYPoe06j3DEVd6uSBCNiaH5LoWyCqg18jWTZu6w@mail.gmail.com>
References: <CANO=Ty2=+8uiYPoe06j3DEVd6uSBCNiaH5LoWyCqg18jWTZu6w@mail.gmail.com>
Message-ID: <CALPTtNUugyG4V3nF4vRjLRtqJfFp2kYR_LM-J5V2Z8gGEypCMg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=94eb2c0815c81c072c05255f7963
Date: Wed, 25 Nov 2015 07:54:08 -0800
From: Reed Loden <reed@reedloden.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Announcing https://github.com/RedHatProductSecurity/Certificates-Shipped/
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--94eb2c0815c81c072c05255f7963
Content-Type: text/plain; charset=UTF-8

Great idea, Kurt.

Is this related to this recent CERT/CC advisory?

http://www.kb.cert.org/vuls/id/566724
http://blog.sec-consult.com/2015/11/house-of-keys-industry-wide-https.html

On Tuesday, November 24, 2015, Kurt Seifried <kseifried@redhat.com> wrote:

> https://github.com/RedHatProductSecurity/Certificates-Shipped/
>
> The idea is to create a comprehensive list of shipped certs/keys/etc by
> open source vendors/distributions/projects so that:
>
> 1) we have a list of secrets maintained by external parties that we rely
> upon
> 2) we can audit them and make sure we should be trusting them
> 3) also spot changes more easily (since the existing corpus is available)
>

--94eb2c0815c81c072c05255f7963--
