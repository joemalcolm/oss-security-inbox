X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1161" "Tuesday" "5" "May" "2015" "19:27:42" "+0200" "Michael Scherer" "misc@zarb.org" "<20150505172741.GE17491@sisay.ephaone.org>" "23" "[oss-security] Local privileges escalation in rubygem open-uri-cached " nil nil nil "5" "2015050517:27:42" "[oss-security] Local privileges escalation in rubygem open-uri-cached" (number mark "        misc@zarb.or May  5   23/1161  " thread-indent "\"[oss-security] Local privileges escalation in rubygem open-uri-cached \"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32355 invoked by uid 550); 5 May 2015 17:28:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32281 invoked from network); 5 May 2015 17:27:54 -0000
Message-ID: <20150505172741.GE17491@sisay.ephaone.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: oss-security@lists.openwall.com
Date: Tue, 5 May 2015 19:27:42 +0200
From: Michael Scherer <misc@zarb.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Local privileges escalation in rubygem open-uri-cached 
To: cve-assign@mitre.org

Hi,

open-uri-cached, a rubygem that will cache downloaded data when using open-uri, is 
suceptible to a local attack due to usage of YAML in a insecure way, and using
a predictable directory name in /tmp for getting that data without verification, see
https://github.com/tigris/open-uri-cached/blob/master/lib/open-uri/cached.rb#L39
https://github.com/tigris/open-uri-cached/blob/master/lib/open-uri/cached.rb#L25
and https://github.com/tigris/open-uri-cached/blob/master/lib/open-uri/cached.rb#L115

So someone could create ahead of time a directory /tmp/openuri-$someuid/, precreate directory
for the host to contact and with proper permissions, wait until a meta file is created, and
replace it with one containing ruby code to be executed, as it doesn't use safe loader for yaml
( http://www.benjaminfleischer.com/2013/03/20/yaml-and-security-in-ruby/ ).

The gem is pulled by various projects on github, the likely most important being
a redmine plugin : https://github.com/backlogs/redmine_backlogs 

Could a CVE be assigned ? I will take care of opening a issue on github  for that
after :
https://github.com/tigris/open-uri-cached

-- 
Michael Scherer
