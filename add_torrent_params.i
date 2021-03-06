%{
#include <libtorrent/add_torrent_params.hpp>
%}

%include "std_vector.i"

namespace std {
   %template(vectorstr) vector<std::string>;
};

%extend libtorrent::add_torrent_params {
	const libtorrent::torrent_info* get_torrent_info() {
		return self->ti.get();
	}
	void set_torrent_info(libtorrent::torrent_info* ptr) {
		self->ti = ptr;
	}
}
%ignore libtorrent::add_torrent_params::ti;

%include <libtorrent/add_torrent_params.hpp>