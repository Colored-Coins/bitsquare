<img src="https://bitsquare.io/images/logo.png" width="176"/><br>
<img src="http://coloredcoins.org/wordpress/wp-content/themes/Coloredcoins/imgs/logo-footer.png" width="176"/>

Experimental build of [Bitsquare](https://github.com/bitsquare/bitsquare) allowing to add arbitrary colored coins to the currency list and thus allowing to trade colored coins. Exchange process itself is completely done by existing Bitsquare code. See Bitsquare documentation on how to do the trade: https://bitsquare.io/

Fork status
-----------

This build requires seed nodes to run the same version. We have two seed nodes running on TEST network, their addresses are already in the code. For other networks your have to run your own seed nodes. PLEASE DO NOT USE THIS BUILD ON MAINNET.

Install
-------

[Download for Windows 32bit](https://drive.google.com/open?id=0BwpJG6mFrYacTktMYm12cG82N1E)

[Download for Windows 64bit](https://drive.google.com/open?id=0BwpJG6mFrYacSXc5MG42RENpaVU)

[Download for Linux 32bit]()

[Download for Linux 64bit]()

[Download for Mac]()

These builds work on TESTNET by default.

How to add colored coin:
-----------------------
1. Go to Account > Altcoins > Add new account > Add colored coin
2. Enter assetId of the colored coin you'd like to add
3. Enter currency code for the coin. Bitsquare will add -CC to it to avoid conflicts. E.g. if you put USD code, new currency will have USD-CC code
4. Click "Add" and wait for a few seconds. If succeed the form should be hidden automatically. You colored coin is now available to use among other altcoins.
5. Make a trade as usual (see Bitsquare docs on that).


License
-------

Bitsquare is [free software](https://www.gnu.org/philosophy/free-sw.html), licensed under version 3 of the [GNU Affero General Public License](https://gnu.org/licenses/agpl.html).

In short, this means you are free to fork this repository and do anything with it that you please. However, if you _distribute_ your changes, i.e. create your own build of the software and make it available for others to use, you must:

 1. Publish your changes under the same license, so as to ensure the software remains free.
 2. Use a name and logo substantially different than "Bitsquare" and the Bitsquare logo seen here. This allows for competition without confusion.

See [LICENSE](LICENSE) for complete details.
