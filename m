X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["970" "Thursday" "12" "September" "2019" "18:29:22" "-0400" "notspam@mm.st" "notspam@mm.st" "<20190912222921.ozyhvh4t6gqzczrn@wrycode>" "17" "Re: [oss-security] Telegram privacy fails again." "^Date:" nil nil "9" "2019091222:29:22" "[oss-security] Telegram privacy fails again." (number mark "        notspam@mm.s Sep 12   17/970   " thread-indent "\"Re: [oss-security] Telegram privacy fails again.\"\n") "<CABMkiz5Fh9tiBgJFD8g4nZWOAz5PLGYDVuXXEa6FGWds6QY7KA@mail.gmail.com>" ("<CAG8b5tQVkcbRqFNk0GhJRCs-kdRPYnkL0E9=mbGMikCOdi7g+w@mail.gmail.com>" "<20190912153927.GA27634@openwall.com>" "<CABMkiz5Fh9tiBgJFD8g4nZWOAz5PLGYDVuXXEa6FGWds6QY7KA@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Telegram privacy fails again." nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21624 invoked by uid 550); 13 Sep 2019 11:13:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7662 invoked from network); 12 Sep 2019 22:29:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mm.st; h=date
	:from:to:subject:message-id:references:mime-version:content-type
	:in-reply-to; s=fm1; bh=Qm8mavWRJ+dpfQaZjEaX+CzN26xi5wc3NP7cxjOP
	SPU=; b=RWt2MHNX7s9Uw3+ZCgLJ9PXZIoOgakKm5sxexPNFPQVGXTGfW35EKjO4
	7ON6nvr2olT7X9bgDaL/ztNAOZpZbSXFHwrhKrJKeaNAxE4IF5lzfyz2lnVXmT/k
	S3Gp/lTRAnKkYeSykYMSbJF4NHFVf+iLXi7ejphRny92nnHfI2Rglt7FIy4/6RKg
	Fe+Yfs2v0d8+mfin1IycK3btMavePh9Wit/sQ+LKZLtsRbPj4jACTgULUNfhc/Ne
	sElgmR93bFQta0TxKCHFJ6P9VCSpM3mWzWHensC3VANX9r+CTUKNpVaoVcHcJ1kh
	jmRnuHFzcHtA6XQfcYE8aZqilOvkOQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=Qm8mav
	WRJ+dpfQaZjEaX+CzN26xi5wc3NP7cxjOPSPU=; b=VvVfBqcmkLFK2bWtp0OfF2
	krkrTOym/RITlB33QkD0XqyrVJ8a0ciasuHb0TrtwnbKF1EKmk07zSI2nb4k0yJs
	c91OCrKI908JhCzJgnrVXwo0/nSMpHyQBZH28LabbLVqd/w/LndghzphX9Hh1wN0
	JxdYIOQUfnftxm6Hr1v38RCUVZmDVXh1YkgqRGMxoXWOokxB0bQbTKRB30zFDty+
	KoaYQF4I9BEylQFbJlM46ZIa+RBiifvZcnDfKt9TJTw0AFoczrJTq4Nexg4yVRWF
	vUsWRqcSojmhMIOMS4kuTBhfF2ctFSqj07id6ALoVznv8dNDjP3Yml/GJX88s/gw
	==
X-ME-Sender: <xms:zMZ6XUvyOwP5eulxZHytentx3JURZYPxVSRItck8zotK3TQgmfceMw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrtdeigddutdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehttdertd
    dttdejnecuhfhrohhmpehnohhtshhprghmsehmmhdrshhtnecurfgrrhgrmhepmhgrihhl
    fhhrohhmpehnohhtshhprghmsehmmhdrshhtnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:zMZ6XeMEC20ugdyYG3HxDkbqhqkWzS8Xy9rg9IMs5_vyn5iQYxamCg>
    <xmx:zMZ6XVwaHOsrX5y7k2j8mctOLg9NhCgsyRyHjyoAJvr-eJlGXLNwTg>
    <xmx:zMZ6Xdj0G0uXKcqQH0AVn14qkIPiw9lJFfGnhQvwHUPx4zf8Ifn7Mg>
    <xmx:zMZ6Xc7vcOWsTP6nqW1KF9hgVcj2gjLMI7Auv9q8RLIBpkQWmc4-Sg>
Message-ID: <20190912222921.ozyhvh4t6gqzczrn@wrycode>
References: <CAG8b5tQVkcbRqFNk0GhJRCs-kdRPYnkL0E9=mbGMikCOdi7g+w@mail.gmail.com>
 <20190912153927.GA27634@openwall.com>
 <CABMkiz5Fh9tiBgJFD8g4nZWOAz5PLGYDVuXXEa6FGWds6QY7KA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <CABMkiz5Fh9tiBgJFD8g4nZWOAz5PLGYDVuXXEa6FGWds6QY7KA@mail.gmail.com>
Date: Thu, 12 Sep 2019 18:29:22 -0400
From: notspam@mm.st
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Telegram privacy fails again.
To: oss-security@lists.openwall.com

>IMO, If Whatsapp/Telegram wanted to take this functionality more seriously,
>they'd need to be writing the images to disk in an encrypted form from the
>outset. It increases the overhead of display, and wouldn't necessarily stop
>forensic recovery etc, but it would mean that other apps couldn't simply
>watch the directory and upload anything which appears in it in a usable
>form. That's a whole other can of worms though as it's another set of keys
>to manage.

There's no way to take this functionality seriously - the feature is a
joke. A privacy feature centered around trusting another user's
node to delete a file you already sent them is silly. Unfortunately,
it seems like nobody gets this; even Matrix clients are supposed to
have message redaction soon.

The original email didn't contain a security vulnerability (remember
the name of this list?)  - it was blogspam. It didn't belong here for
the same reason that you don't see Snapchat bugs on this list.
