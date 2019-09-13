X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1297" "Friday" "13" "September" "2019" "12:20:45" "+0100" "Stuart Henderson" "stu@spacehopper.org" "<20190913112045.GI43354@symphytum.spacehopper.org>" "25" "Re: [oss-security] Telegram privacy fails again." "^Date:" nil nil "9" "2019091311:20:45" "[oss-security] Telegram privacy fails again." (number mark "        stu@spacehop Sep 13   25/1297  " thread-indent "\"Re: [oss-security] Telegram privacy fails again.\"\n") "<20190912222921.ozyhvh4t6gqzczrn@wrycode>" ("<CAG8b5tQVkcbRqFNk0GhJRCs-kdRPYnkL0E9=mbGMikCOdi7g+w@mail.gmail.com>" "<20190912153927.GA27634@openwall.com>" "<CABMkiz5Fh9tiBgJFD8g4nZWOAz5PLGYDVuXXEa6FGWds6QY7KA@mail.gmail.com>" "<20190912222921.ozyhvh4t6gqzczrn@wrycode>") nil nil nil nil nil nil nil "Re: [oss-security] Telegram privacy fails again." nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5355 invoked by uid 550); 13 Sep 2019 11:20:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5335 invoked from network); 13 Sep 2019 11:20:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=spacehopper.org;
	s=s3; t=1568373646; h=from:from:subject:subject:date:date:message-id:message-id:
	 in-reply-to:in-reply-to:references:references;
	bh=YSUMl/4h9K2ORYi03Dvr9JG+qBXIdiRFOLqeZr2B178=;
	b=i1LIx7mtngzg1NZA5zltltrJZAmg1dK7Kj3M3FG1LlUU2h7aP/l+6kjtiVTD7wM9D468zQ
	ZtJipc3rtQFu10aMr/0d4aQ1YvCCCqm3yFxn4ddY9d54tPTzbRurVpJltu5IAgv64WSjHR
	q1+SpHg5S1mGJlr9TyKVPBEQJ+gEsM3YP0yeOP+uptJBkpASXax4+X1cf+oqrTTvmFyHS8
	eH8/b6M5k86RkFcsth4irlx4TTt5YAb4kHjrIlAvOUnEfjz8eQV/8DpUN94CzUfwJdNl8U
	fDsjVYSUYJTs3Mr2FVIB4uEy9ZIMtszRTd5r4+V3tfvb4zhd6szHPQMOGbAvjA==
Message-ID: <20190913112045.GI43354@symphytum.spacehopper.org>
References: <CAG8b5tQVkcbRqFNk0GhJRCs-kdRPYnkL0E9=mbGMikCOdi7g+w@mail.gmail.com>
 <20190912153927.GA27634@openwall.com>
 <CABMkiz5Fh9tiBgJFD8g4nZWOAz5PLGYDVuXXEa6FGWds6QY7KA@mail.gmail.com>
 <20190912222921.ozyhvh4t6gqzczrn@wrycode>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190912222921.ozyhvh4t6gqzczrn@wrycode>
User-Agent: Mutt/1.12.1 (2019-06-15)
Date: Fri, 13 Sep 2019 12:20:45 +0100
From: Stuart Henderson <stu@spacehopper.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Telegram privacy fails again.
To: oss-security@lists.openwall.com

On 2019/09/12 18:29, notspam@mm.st wrote:
> > IMO, If Whatsapp/Telegram wanted to take this functionality more seriously,
> > they'd need to be writing the images to disk in an encrypted form from the
> > outset. It increases the overhead of display, and wouldn't necessarily stop
> > forensic recovery etc, but it would mean that other apps couldn't simply
> > watch the directory and upload anything which appears in it in a usable
> > form. That's a whole other can of worms though as it's another set of keys
> > to manage.
> 
> There's no way to take this functionality seriously - the feature is a
> joke. A privacy feature centered around trusting another user's
> node to delete a file you already sent them is silly. Unfortunately,
> it seems like nobody gets this; even Matrix clients are supposed to
> have message redaction soon.

It is still a useful feature as long as you don't consider it "secure".

> The original email didn't contain a security vulnerability (remember
> the name of this list?)  - it was blogspam. It didn't belong here for
> the same reason that you don't see Snapchat bugs on this list.

If a user of the software took the "delete" claim at face value then it
could be considered security related .. and unlike Snapchat, the Telegram
client *is* open source.

