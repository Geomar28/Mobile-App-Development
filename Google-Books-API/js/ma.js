function bookSearch(){
    // console.log('this function runs')
    var search = document.getElementById('search').value
    document.getElementById('results').innerHTML = ""
    console.log(search)

    $.ajax({
        url: "https://www.googleapis.com/books/v1/volumes?q=" + search,
        dataType: "json",

        success: function(data) {
            for (i = 0; i < data.items.length ; i++) {
                    results.innerHTML += "<h2>" + data.items[i].volumeInfo.title + "<br>" + data.items[i].volumeInfo.authors +"<br>" + data.items[i].volumeInfo.description +"<br>" + data.items[i].volumeInfo.smallThumbnail +"<br>" + "</h2>"
            }

            // for (i = 0; i < data.publisher.length; i++) {
            //         results.innerHTML += "<h2>" data.publisher[i].volumeInfo.description"</h2>"
            // }
            // console.log(data)
        },

        type: 'GET'
    });
}

document.getElementById('button').addEventListener('click', bookSearch, false)
