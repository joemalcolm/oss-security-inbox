Received: (qmail 10081 invoked by uid 550); 2 Nov 2022 18:26:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10057 invoked from network); 2 Nov 2022 18:26:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sciops.net; s=20210706;
	t=1667413448;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ayqyj5x3RHHym2RHce7PpNwuRe4eZv3DpwV3z2qDgN8=;
	b=iywnQLn6lBf39dyoSFtbh43Ya75EoKzOg0PrLLajTDKqBNgt9qfNRiK08v9cngpJaldMuH
	sRVVbstXWcUNZW+5kQ/utmRTYn7hIk4Fqvd6C+9a3l2+sp/v4X0rS3VbAnrtNpSDh4z/TX
	HLNRKUKZVYhOmQj4/IWXGgWPGQGlxkQ=
Date: Wed, 2 Nov 2022 11:24:08 -0700
From: Kurt H Maier <khm@sciops.net>
To: oss-security@lists.openwall.com
Message-ID: <Y2K1yOB7748iGI2P@wopr>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20221101170833.GA10470@openwall.com>
 <20221102150921.3ab3f2d0@computer>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221102150921.3ab3f2d0@computer>
Subject: Re: [oss-security] OpenSSL X.509 Email Address 4-byte Buffer
 Overflow (CVE-2022-3602), X.509 Email Address Variable Length Buffer
 Overflow (CVE-2022-3786)

On Wed, Nov 02, 2022 at 03:09:21PM +0100, Hanno Böck wrote:
> FWIW it only takes a basically trivial fuzz target on the affected
> function to find this bug with libfuzzer.

I'm not sure what the value is of all this Monday-morning
quarterbacking, from 'basically trivial' fuzzing to code-quality
comparisons of hypothetical Rust ports.  OpenSSL's development process
has a bad rap, and there are definitely some easy wins to be had.
Posting "if they'd only adopted my pet practice" to oss-sec isn't fixing
anything in the OpenSSL project.  Please consider directing fuzzing
advice and PL theory directly to the project?  I agree there would be
benefit to this stuff, but dunking on them on unrelated lists isn't
getting the medicine to the patient.

Respectfully,
khm
