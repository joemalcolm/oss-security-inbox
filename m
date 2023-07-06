Received: (qmail 1822 invoked by uid 550); 6 Jul 2023 22:28:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1804 invoked from network); 6 Jul 2023 22:28:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=netmeister.org;
	s=2023; t=1688682488;
	bh=+8L9bJZ0n76svXOkDRezkGkYUb+qHkG0NfdXBXO0s2E=;
	h=From:To:Subject:Content-Type:From:To:Subject;
	b=IC7GDwoURykAsr14cA+BD1/ybaZGLKbHk1B4/Zqb67WsnrMZ5vINeDjlzKMrdZqyR
	 VuySq6Ex7nIhqmRQRRjUznZ2dAZpm3WY0QErVwoIAHTvqzBKnCRvA8LcXZ41W/cS5c
	 PEZfa7vwsJeDm1aT7jIeyirx9bYxlzMLzIv/GqEq7cj3OwFuUMMlHGFg/bYLuU6caN
	 nUBUra6Ne3eLM8OpWUzv8OjuqYfnjoTwzj4JoOPNBM2dvcRcarDOVIgJnVC0JkzS4S
	 uZn0BlJVNxiM3HMuSaYDgH11Lne0n5dsnuwwADWEpKyLAdOWEG0v+g5rS2RTTUzdru
	 nTZsci1LDeLhA==
Date: Thu, 6 Jul 2023 18:28:07 -0400
From: Jan Schaumann <jschauma@netmeister.org>
To: oss-security@lists.openwall.com
Message-ID: <ZKc/9yBX5LUezfUH@netmeister.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] CVE-2023-28853: mastodon: Blind LDAP injection in login

(I have no affiliation with the project, but posting
this here because it seems to me that increasingly
non-packaged / GitHub distributed projects tend not to
send out announcements here.)

https://github.com/mastodon/mastodon/security/advisories/GHSA-38g9-pfm9-gfqv

Summary
Mastodon allows configuration of LDAP for
authentication. The LDAP query made during login is
insecure and the attacker can perform LDAP injection
attack to leak arbitrary attributes from LDAP
database.


CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:C/C:H/I:N/A:N

Severity: 7.7/10

CVE-2023-28853

Affected versions: >= 2.5.0
Patched versions:  4.1.3, 4.0.5, 3.5.9

Details

These are the default variables initiated if LDAP is
configured:

mastodon/config/initializers/devise.rb
Lines 398 to 414 in 94cbd80

 if ENV['LDAP_ENABLED'] == 'true'
   config.ldap_authentication = true
   config.check_at_sign       = true
   config.ldap_host           = ENV.fetch('LDAP_HOST', 'localhost')
   config.ldap_port           = ENV.fetch('LDAP_PORT', 389).to_i
   config.ldap_method         = ENV.fetch('LDAP_METHOD', :simple_tls).to_sym
   config.ldap_base           = ENV.fetch('LDAP_BASE')
   config.ldap_bind_dn        = ENV.fetch('LDAP_BIND_DN')
   config.ldap_password       = ENV.fetch('LDAP_PASSWORD')
   config.ldap_uid            = ENV.fetch('LDAP_UID', 'cn')
   config.ldap_mail           = ENV.fetch('LDAP_MAIL', 'mail')
   config.ldap_tls_no_verify  = ENV['LDAP_TLS_NO_VERIFY'] == 'true'
   config.ldap_search_filter  = ENV.fetch('LDAP_SEARCH_FILTER', '(|(%{uid}=%{email})(%{mail}=%{email}))')
   config.ldap_uid_conversion_enabled  = ENV['LDAP_UID_CONVERSION_ENABLED'] == 'true'
   config.ldap_uid_conversion_search   = ENV.fetch('LDAP_UID_CONVERSION_SEARCH', '.,- ')
   config.ldap_uid_conversion_replace  = ENV.fetch('LDAP_UID_CONVERSION_REPLACE', '_')
 end


Then, during the authentication, this line is
executed:

def authenticate_with_ldap(params = {})
   ldap   = Net::LDAP.new(ldap_options)
   filter = format(Devise.ldap_search_filter, uid: Devise.ldap_uid, mail: Devise.ldap_mail, email: params[:email])

   if (user_info = ldap.bind_as(base: Devise.ldap_base, filter: filter, password: params[:password]))
     ldap_get_user(user_info.first)
   end
 end

So this query is filled with untrusted input, namely
user's login:

(|(cn=%{email})(mail=%{email}))
User can inject LDAP query here. I didn't find a way
to login as arbitrary user because there are two
queries - one for fetching the user object and the
second one for authentication and the injection exists
in the first one.

However, the attacker can use blind injection
technique to exfiltrate one bit of information at a
time.

PoC
1. Set up Mastodon and LDAP authentication
2. Create a user admin with any password. The information
   that we want to leak is the description=LDAP
   Administrator attribute but it can be any (I'm not yet
   able to leak password hash but I'm working on it).
3. Now, as the attacker, create a new account. In my case
   it's adminmalicious and password test.
4. Now when we try to log in with the login
   adminmalicious)(&(cn=admin)(description=A*) and
   password test. The full query will look like this:
   (|(cn=adminmalicious)(&(cn=admin)(description=A*))(mail=adminmalicious)(&(cn=admin)(description=A*))).
   In plain english this query means "If the description
   of the user admin starts with A, the query will return
   both admin and adminmalicious". In my example, the
   admin description does not start with A so only
   adminmalicious will be returned from the LDAP query
   and we'll be logged in as adminmalicious.
5. When we try to log in with
   adminmalicious)(&(cn=admin)(description=L*), the query
   will return both admin and adminmalicious but admin
   will be first and the app will try to login to user
   admin with the password test which will fail and we
   will see Invalid E-mail address or password..

Impact
This way we've leaked one bit of information of other
user from the database. Of course, this is easy to
script and leak whole attribute values.

