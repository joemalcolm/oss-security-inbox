X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["400" "Thursday" "6" "October" "2016" "15:34:03" "-0400" "Glenn Randers-Pehrson" "glennrp@gmail.com" "<CA+PdXcvCyhve55tnvG-YwzTN16ymiS-XCbhCCEdTzOZoX_VL5g@mail.gmail.com>" "18" "Re: [oss-security] librsvg and cairo are causing libpng to write out-of-bounds" nil nil nil "10" "2016100619:34:03" "[oss-security] librsvg and cairo are causing libpng to write out-of-bounds" (number mark "U       glennrp@gmai Oct  6   18/400   " thread-indent "\"Re: [oss-security] librsvg and cairo are causing libpng to write out-of-bounds\"\n") "<CACn5sdQZPFShZBtHviBu_tS=NeN_uEobPQh8CzLHbmvsG-sTGg@mail.gmail.com>" ("<CACn5sdQZPFShZBtHviBu_tS=NeN_uEobPQh8CzLHbmvsG-sTGg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9997 invoked by uid 550); 6 Oct 2016 19:34:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9973 invoked from network); 6 Oct 2016 19:34:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=F721pYupSff+AO5ZfD3b9jb2+FzMdZ2+drUn73pVc68=;
        b=xNi6MiPYB35nr1u6npZpMcMfKWtpt4vsO8SgrJ0/Jgtxy2K4ttIVnitEC1eCvLRqz6
         ByvtMGDoIgx0oPBWxVv4OTEG+bZDuQOZNGNCmz3TbLzEzMRSz5ckRP1YdrRgBCawK1sC
         ZtcccvNOLxlZKr9CFKnQR4MtrONBNDca0ZUc8xFlE8y0OyiGCDYHdAlM7VCZUqvCbQ8D
         tvOMJ37DWqPtAL8fE6IlEq8BWkuoCcwJh26Om4ZHCL9dagHh6HAHpwHQ32DWgJNTPpsu
         Zu6cZRGqFCgRzEC0Wo5mAUZpONsqoHFP9FLKL0tX2lIgEaPBK6eNlk3R/RwvB1bXomXr
         xlLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=F721pYupSff+AO5ZfD3b9jb2+FzMdZ2+drUn73pVc68=;
        b=GZPj06ZQYKrQfMcXKuVcMypYdDFAmCu7B0Dp3YHQyxSNSbz4JjGN6Is6OKqJlJXSxW
         RvICU7jvqWgPr/TURA9K/5FU/gwkH9lamJu8fAk6V5P2yaVEUOBsEzaFmgzro835si7u
         L+DQIt6mu9Z04XY8JOG2aQ+eOnC46Ta8eytzNnFeeE3WIEumiFP05wJvKOHkgGblWHuF
         pB9DxkBRUrK4mLJNPsxzTsRxTeufG8SwgIHSgCBYICBi5XJE+nOG9ZhckxwMctOrcjgv
         VJR7+8WIUsDw8AiR2fHsFUOLs4XSvr+/rXfewydi9LK7txsxrFqJf20HhlwOzpQ9ei7I
         NfIw==
X-Gm-Message-State: AA6/9Rl4RbpE+pClXsVILarDyV3wK5xA5Qv3osVAjyYpIILi9avu2d/DD+0HzNN6sn7We/KVTtHOeSb++P7mVw==
X-Received: by 10.36.204.68 with SMTP id x65mr17043471itf.54.1475782443920;
 Thu, 06 Oct 2016 12:34:03 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CACn5sdQZPFShZBtHviBu_tS=NeN_uEobPQh8CzLHbmvsG-sTGg@mail.gmail.com>
References: <CACn5sdQZPFShZBtHviBu_tS=NeN_uEobPQh8CzLHbmvsG-sTGg@mail.gmail.com>
From: Glenn Randers-Pehrson <glennrp@gmail.com>
Date: Thu, 6 Oct 2016 15:34:03 -0400
Message-ID: <CA+PdXcvCyhve55tnvG-YwzTN16ymiS-XCbhCCEdTzOZoX_VL5g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=94eb2c05bce855fcff053e37607e
Subject: Re: [oss-security] librsvg and cairo are causing libpng to write out-of-bounds

--94eb2c05bce855fcff053e37607e
Content-Type: text/plain; charset=UTF-8

I'm seeing pretty much the same thing on my Ubuntu-16:04 platform,
except that it's using libpng12 instead of libpng16.

On Wed, Oct 5, 2016 at 9:43 PM, Gustavo Grieco <gustavo.grieco@gmail.com>
wrote:

> Hello,
>

We found a write out-of-bounds affecting librsvg 2.40 and cairo 1.14.6


Glenn

--94eb2c05bce855fcff053e37607e--
