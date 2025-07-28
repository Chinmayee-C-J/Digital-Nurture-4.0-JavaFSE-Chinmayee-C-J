
import React from 'react';
import Post from './Post';

class Posts extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            posts: [],
            hasError: false
        };
    }

    componentDidMount() {
        this.loadPosts();
    }

    loadPosts() {
        fetch('https://jsonplaceholder.typicode.com/posts')
            .then(response => response.json())
            .then(data => this.setState({ posts: data }))
            .catch(error => console.error('Error fetching posts:', error));
    }

    componentDidCatch(error, info) {
        this.setState({ hasError: true });
        alert('An error occurred: ' + error);
    }

    render() {
        if (this.state.hasError) {
            return <h2>Something went wrong.</h2>;
        }
        return (
            <div>
                <h2>Posts</h2>
                {this.state.posts.map(post => (
                    <Post key={post.id} title={post.title} body={post.body} />
                ))}
            </div>
        );
    }
}

export default Posts;
