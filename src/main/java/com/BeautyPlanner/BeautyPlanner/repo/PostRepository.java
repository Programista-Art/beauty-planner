package com.BeautyPlanner.BeautyPlanner.repo;
import com.BeautyPlanner.BeautyPlanner.models.Post;
import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

public interface PostRepository extends CrudRepository<Post,Long> {
}
