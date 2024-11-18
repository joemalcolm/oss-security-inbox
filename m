Received: (qmail 25958 invoked by uid 550); 18 Nov 2024 03:49:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16181 invoked from network); 18 Nov 2024 02:43:14 -0000
DKIM-Signature: a=rsa-sha256; b=T0Jydh+KmdG5C0GHPGgZyV+P4sqtXZf0tyVPnTrxp1sYfuUqP8CIuQEbTtbp0PXECYsfz+jTOOZxpYjwtWcc3IM+VGR01/y58W5Yea78XL0elPzaf4ZEPAWYgF6zJ/IQBIprxpHTkbKCJvcy5J57WQ0T9vJz575cxDyhpHiZd79WsuomNR9dM7HM7ctsIeeRFSfXPYFCBXsePHc9rFUwu1ijQvrB3uCLig04yru9df9Aql04IJe02neZ+KOKIfgtCbCzlsCR6Vq0HnysNhRFKlXWsTgZpWyT7lVSfei0FqbIVV8y3nABvoOJVQQhVjtUyvWPXSQ29SwKK1n+eRiGUw==; s=purelymail2; d=spwhitton.name; v=1; bh=RAOw+FdQ/xNxgKStF5qf7LuGN6zX6Nddw4NYELkY8FY=; h=Received:Received:From:To:Subject:Date;
DKIM-Signature: a=rsa-sha256; b=sbA+D2j+Gd36J7cRcELASwCjG92IZNum0mpO/0RZBtylT+uklonhWwjAMKJwlbpzcBfZmolHna0OXT4cC+qPLDgi3K3rR6wL62gjlZ57lTTS18ULP5OG6IQxfJHC7e6Ms+fUtTerSXoCfBpOMlX8pOqEoUXsYLWftWuhiD5JBH5Qo/GOoLsBe0misFvRiITmw88zpFZ3IM6ilzAaKIyKvf2QSbfNIasfb6UqOW4qkHCdVNrmBHheP4taYf1tB7TehlC8vIsdUVmTKj9QChy4Eg/BbC6DN44OaxmCCV1YT8g3kaq6Jh+w92Z7c0FEb11tKsX9v6KJykjhjKL52oWbXg==; s=purelymail2; d=purelymail.com; v=1; bh=RAOw+FdQ/xNxgKStF5qf7LuGN6zX6Nddw4NYELkY8FY=; h=Feedback-ID:Received:Received:From:To:Subject:Date;
Feedback-ID: 20115:3760:null:purelymail
X-Pm-Original-To: oss-security@lists.openwall.com
From: Sean Whitton <spwhitton@spwhitton.name>
To: "David A. Wheeler" <dwheeler@dwheeler.com>
Cc: oss-security@lists.openwall.com
In-Reply-To: <F60236E0-F65A-4441-9E62-64EE55016B2C@dwheeler.com> (David
	A. Wheeler's message of "Wed, 6 Nov 2024 10:44:55 -0500")
References: <20241106041215.GA4432@openwall.com>
	<F60236E0-F65A-4441-9E62-64EE55016B2C@dwheeler.com>
Date: Mon, 18 Nov 2024 10:42:57 +0800
Message-ID: <87cyit5kjy.fsf@melete.silentflame.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [oss-security] shell wildcard expansion (un)safety

Hello,

On Wed 06 Nov 2024 at 10:44am -05, David A. Wheeler wrote:

> Long ago I wrong a really long essay about POSIX filename issues.
> Some people here may find it interesting:
> https://dwheeler.com/essays/fixing-unix-linux-filenames.html

This essay and related ones on your website are invaluable for people
trying to write POSIX sh.  I certainly found them so.

-- 
Sean Whitton
