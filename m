X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["455" "Tuesday" "2" "August" "2016" "10:39:49" "+0100" "Ibrahim el-sayed" "i.elsayed92@gmail.com" "<CAJvHH_QoBJyo_qyOdgE-G=pMhZCfD0pt2f3WHhGjnw9KZMC5qA@mail.gmail.com>" "16" "[oss-security] CVE Request ImageMagick buffer overflow" nil nil nil "8" "2016080209:39:49" "[oss-security] CVE Request ImageMagick buffer overflow" (number mark "U       i.elsayed92@ Aug  2   16/455   " thread-indent "\"[oss-security] CVE Request ImageMagick buffer overflow\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27790 invoked by uid 550); 2 Aug 2016 09:40:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27770 invoked from network); 2 Aug 2016 09:40:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=VPjvW3MBVnFzb+7FODrVk3zqj3fljAUB4S5swvxhp9U=;
        b=abRNxTwBKXBgeI1/TSGHufWXO6cELPFV9BaRilocxUju0d7Ki8UllMaQ0QCAeFBXSW
         CCv3nzkF59q0Nj5pVQo4D4B7++40ByYlP8tJz9T+oXbsKddiCBLZz21KS2e9HaivTyhn
         cBhZ2Y60J9D5l+kzTXF2lDxreuq6wF3vvKAoxGGCNO8nqyTxp7GjvzkZguy7ae3lhaRi
         BHTCul9ZA6mvxjCbnh7WKXj+AWCjsBBCelYnHh7OKxXrH1B7Kx5eBEjxQlW1BYsL41ig
         V3lJQp7SD91YuUHK4nq389zlGnckW5/J5k4GFrmyPWblJtAkTpA6bkY43kIFKEuRmnWX
         P8fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=VPjvW3MBVnFzb+7FODrVk3zqj3fljAUB4S5swvxhp9U=;
        b=VyvzYH+LbX8HnQ3Uj0mnpkNWMynVcEj7QR/lcUcPsgqmAYbi2WT7MRee+IX4JT1FQP
         E9IWteRx+IOgTs893DTtOXkccZ8pN6Qd9C9b1FFn6MPuvrtgSMMGle7/qZf2DKH87EYH
         GNnLc0uOQmNMyg7WtbCyHWMaNX/40PvO/sGzL3viwuDeA9FJBzyD/t/hac7hw+ZRaIeB
         y2fwQAyqJq72GHOU89vnC2aoQORqU00fwTiJC0D77KCQ1POifNM2b2vKHGYYorMJbTvt
         C67+bUji/ij6kyfPQkt33zY8NcCU6jnDEl2KtWeRwB3Jn/v8kZ5kdFa9sB87nfdNFdwd
         lJSQ==
X-Gm-Message-State: AEkoouuLhCv5+LCk5qTr+9DbBFd5GviRQcE048HVX+wGgnwTygVSNNchXiMm1WPQl3RXKxzlsd/brcvCFV3eeA==
X-Received: by 10.194.127.163 with SMTP id nh3mr55019859wjb.74.1470130830177;
 Tue, 02 Aug 2016 02:40:30 -0700 (PDT)
MIME-Version: 1.0
From: Ibrahim el-sayed <i.elsayed92@gmail.com>
Date: Tue, 2 Aug 2016 10:39:49 +0100
Message-ID: <CAJvHH_QoBJyo_qyOdgE-G=pMhZCfD0pt2f3WHhGjnw9KZMC5qA@mail.gmail.com>
To: cve-assign@mitre.org
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=e89a8f83aa29e7fedb053913813f
Subject: [oss-security] CVE Request ImageMagick buffer overflow

--e89a8f83aa29e7fedb053913813f
Content-Type: text/plain; charset=UTF-8

Hi CVE assignemnt team,
I would like to request a CVE for a buffer overflow that was found in
ImageMagick. You can find the fix in the following commit:
https://github.com/ImageMagick/ImageMagick/commit/76401e172ea3a55182be2b8e2aca4d07270f6da6


Cheers,
Ibrahim M. El-Sayed
Security Engineer
Website: https://www.ibrahim-elsayed.com
@ibrahim_mosaad

--e89a8f83aa29e7fedb053913813f--
