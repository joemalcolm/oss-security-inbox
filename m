Received: (qmail 3529 invoked by uid 550); 18 Apr 2023 15:52:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30139 invoked from network); 18 Apr 2023 15:46:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stig.io; s=MBO0001;
	t=1681832796;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=60ItBG4y6lX03VS6aK5PLbzpVPGBh/FVYB9sAOmvL+Q=;
	b=ulF5uT8blNrfmrsiqu2wG6PwyIBrj4YhKoMiF80Q0poQkSdYQX4SI51p1ei75NGH82MS6B
	zOTDE0Ifu8HIqvWZqnsNCxxNZKTGj9WoOZJ0MBvfj2wCqBDLKIJWps0nHYfEy98WsHv3R7
	ejcbtlzhLcaDzc5/um5T+IJrVCxS8LcaGyD7oDU1L3xYrzJgqgO+VhJ4Hwvo2qHCPT8+mb
	6/nHcZtk5gRR6gNVBBFyVA67TuGh66wz4MuepXp3/MND6ZToAUGcXNEoWY/GGlGUVc6PWQ
	Ch1ze+4NQrnG1FLBps7vtIbsDdOl2u0SDqgcU0W3xDKCTAjCFaMjBd3/CRBfyQ==
Date: Tue, 18 Apr 2023 17:46:30 +0200
From: Stig Palmquist <stig@stig.io>
To: oss-security@lists.openwall.com
Cc: sjn@pvv.org
Message-ID: <20230418154630.eoheygqyom3c7ovw@stig.io>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Subject: [oss-security] Perl's HTTP::Tiny has insecure TLS cert default, affecting CPAN.pm
 and other modules

HTTP::Tiny v0.082, a Perl core module since v5.13.9 and available
standalone on CPAN, does not verify TLS certs by default. Users must
opt-in with the verify_SSL=>1 flag to verify certs when using HTTPS.

We grepped trough CPAN to find distributions using HTTP::Tiny that
didn't specify cert verification behaviour, possibly exposing users to
mitm attacks. Here are some examples with patches:

- CPAN.pm v2.34 downloads and executes code from https://cpan.org
  without verifying server certs. Fixed in v2.35-TRIAL.
  https://github.com/andk/cpanpm/commit/9c98370287f4e709924aee7c58ef21c85289a7f0

- GitLab::API::v4 v0.26 exposes API secrets to a network attacker.
  https://github.com/bluefeet/GitLab-API-v4/pull/57

- Finance::Robinhood v0.21 is maybe exposing API secrets and financial
  information to a network attacker.
  https://github.com/sanko/Finance-Robinhood/pull/6

- Paws (aws-sdk-perl) v0.44 is maybe exposing API secrets to a network
  attacker.
  https://github.com/pplu/aws-sdk-perl/pull/426

- CloudHealth::API v0.01 is maybe exposing API secrets to a network
  attacker.
  https://github.com/pplu/cloudhealth-api-perl/pull/2

... and more. We have generated a list of over 300 potentially affected
CPAN distributions.

More info in our blog post:
https://blog.hackeriet.no/perl-http-tiny-insecure-tls-default-affects-cpan-modules/

-- 
Stig Palmquist <stig@stig.io>
